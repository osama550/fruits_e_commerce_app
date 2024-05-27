import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_e_commerce_app/app/my_app.dart';
import 'package:fruits_e_commerce_app/core/cache/app_secure_storage.dart';
import 'package:fruits_e_commerce_app/core/config/app_bloc_observer.dart';
import 'package:fruits_e_commerce_app/core/di/service_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  await EasyLocalization.ensureInitialized();

  Bloc.observer = const AppBlocObserver();
  await setUpServiceLocator();
  await AppSecureStorage.instance.getToken();
  await ScreenUtil.ensureScreenSize();
  runApp(EasyLocalization(
    supportedLocales: const [
      Locale('en'),
      Locale('ar'),
    ],
    path: "assets/translations",
    child: const MyApp(),
  ));
}
