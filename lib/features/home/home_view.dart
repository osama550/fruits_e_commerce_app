import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
            onTap: () {
             
              context.locale.languageCode == "en"
                  ? context.setLocale(const Locale("ar"))
                  : context.setLocale(const Locale("en"));
            },
            child: Text(context.tr("home"))),
      ),
    );
  }
}
