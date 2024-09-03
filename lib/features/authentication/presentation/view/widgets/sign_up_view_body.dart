import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_e_commerce_app/core/utils/widgets/build_error_bar.dart';
import 'package:fruits_e_commerce_app/core/utils/widgets/custom_button.dart';
import 'package:fruits_e_commerce_app/core/utils/widgets/custom_text_form_field.dart';
import 'package:fruits_e_commerce_app/core/utils/widgets/password_field.dart';
import 'package:fruits_e_commerce_app/features/authentication/presentation/view/controller/signup_cubit/sign_up_cubit.dart';
import 'package:fruits_e_commerce_app/features/authentication/presentation/view/widgets/have_an_acount_view.dart';
import 'package:fruits_e_commerce_app/features/authentication/presentation/view/widgets/terms_and_conditions.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  AutovalidateMode _autoValidateMode = AutovalidateMode.disabled;
  late String email, userName, password;
  late bool isTermsAccepted = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Form(
        key: _formKey,
        autovalidateMode: _autoValidateMode,
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.025,
            ),
            CustomTextFormField(
                onSaved: (value) {
                  userName = value!;
                },
                hintText: context.tr("FullName"),
                textInputType: TextInputType.name),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.025,
            ),
            CustomTextFormField(
                onSaved: (value) {
                  email = value!;
                },
                hintText: context.tr("E-mail"),
                textInputType: TextInputType.emailAddress),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.025,
            ),
            PasswordField(
              onSaved: (value) {
                password = value!;
              },
            ),
            const SizedBox(
              height: 16,
            ),
            TermsAndConditions(
              onChanged: (value) {
                isTermsAccepted = value;
              },
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.03,
            ),
            CustomButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    if (isTermsAccepted == true) {
                      context
                          .read<SignUpCubit>()
                          .createUserWithEmailAndPassword(
                              email, password, userName);
                    } else {
                      buildErrorBar(context, context.tr("PleaseAcceptTerms"));
                    }
                  } else {
                    setState(() {
                      _autoValidateMode = AutovalidateMode.always;
                    });
                  }
                },
                text: context.tr("CreateAccount")),
            const SizedBox(
              height: 26,
            ),
            const HaveAnAcountView()
          ],
        ),
      ),
    ));
  }
}
