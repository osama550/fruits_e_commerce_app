import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fruits_e_commerce_app/core/utils/widgets/custom_button.dart';
import 'package:fruits_e_commerce_app/core/utils/widgets/custom_text_form_field.dart';
import 'package:fruits_e_commerce_app/features/authentication/presentation/view/widgets/have_an_acount_view.dart';
import 'package:fruits_e_commerce_app/features/authentication/presentation/view/widgets/terms_and_conditions.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.025,
          ),
          CustomTextFormField(
              hintText: context.tr("FullName"),
              textInputType: TextInputType.name),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.025,
          ),
          CustomTextFormField(
              hintText: context.tr("E-mail"),
              textInputType: TextInputType.emailAddress),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.025,
          ),
          CustomTextFormField(
            hintText: context.tr("Password"),
            textInputType: TextInputType.visiblePassword,
            suffixIcon: const Icon(
              Icons.remove_red_eye,
              color: Color(0xFFc9cEFF),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const TermsAndConditions(),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.03,
          ),
          CustomButton(onPressed: () {}, text: context.tr("CreateAccount")),
          const SizedBox(
            height: 26,
          ),
          const HaveAnAcountView()
        ],
      ),
    ));
  }
}
