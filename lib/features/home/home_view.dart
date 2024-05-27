import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fruits_e_commerce_app/core/config/router/app_routes.dart';
import 'package:go_router/go_router.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
            onTap: () {
              GoRouter.of(context).push(AppRoutes.secondView);
              context.locale.languageCode == "en"
                  ? context.setLocale(const Locale("ar"))
                  : context.setLocale(const Locale("en"));
            },
            child: Text(context.tr("home"))),
      ),
    );
  }
}
