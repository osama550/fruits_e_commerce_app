import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_e_commerce_app/app/my_app.dart';
import 'package:fruits_e_commerce_app/core/cache/app_secure_storage.dart';
import 'package:fruits_e_commerce_app/core/cache/cache_helper.dart';
import 'package:fruits_e_commerce_app/core/config/app_bloc_observer.dart';
import 'package:fruits_e_commerce_app/core/services/service_locator.dart';
import 'package:fruits_e_commerce_app/core/utils/functions/check_firebase_state_changes.dart';
import 'package:fruits_e_commerce_app/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  await EasyLocalization.ensureInitialized();

  Bloc.observer = const AppBlocObserver();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  checkFirebaseStateChanges();
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
