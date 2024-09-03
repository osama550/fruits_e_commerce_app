import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fruits_e_commerce_app/core/utils/widgets/custom_app_bar.dart';
import 'package:fruits_e_commerce_app/features/authentication/presentation/view/widgets/sign_in_view_body.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: context.tr("signIn")),
      body: const SigninViewBody(),
    );
  }
}
