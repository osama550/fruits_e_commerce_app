import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fruits_e_commerce_app/core/utils/widgets/custom_app_bar.dart';
import 'package:fruits_e_commerce_app/features/authentication/view/widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: context.tr("signIn")),
      body: const LoginViewBody(),
    );
  }
}
