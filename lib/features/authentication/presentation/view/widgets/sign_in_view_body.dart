import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_e_commerce_app/core/utils/app_colors.dart';
import 'package:fruits_e_commerce_app/core/utils/app_images.dart';
import 'package:fruits_e_commerce_app/core/utils/functions/app_text_styles.dart';
import 'package:fruits_e_commerce_app/core/utils/widgets/custom_button.dart';
import 'package:fruits_e_commerce_app/core/utils/widgets/custom_text_form_field.dart';
import 'package:fruits_e_commerce_app/core/utils/widgets/password_field.dart';
import 'package:fruits_e_commerce_app/features/authentication/presentation/view/controller/signin_cubit/sign_in_cubit.dart';
import 'package:fruits_e_commerce_app/features/authentication/presentation/view/widgets/dont_have_an_acount_view.dart';
import 'package:fruits_e_commerce_app/features/authentication/presentation/view/widgets/or_divider.dart';
import 'package:fruits_e_commerce_app/features/authentication/presentation/view/widgets/social_text_button.dart';

class SigninViewBody extends StatefulWidget {
  const SigninViewBody({super.key});

  @override
  State<SigninViewBody> createState() => _SigninViewBodyState();
}

class _SigninViewBodyState extends State<SigninViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late String email, password;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.025,
              ),
              CustomTextFormField(
                onSaved: (value) {
                  email = value!;
                },
                hintText: context.tr("E-mail"),
                textInputType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.025,
              ),
              PasswordField(
                onSaved: (value) {
                  password = value!;
                },
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.025,
              ),
              Align(
                alignment: AlignmentDirectional.topEnd,
                child: Text(
                  context.tr("ForgotPassword"),
                  style: TextStyles.semiBold13.copyWith(
                    color: AppColors.lightPrimaryColor,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.03,
              ),
              CustomButton(
                  onPressed: () {
                    formKey.currentState!.save();
                    if (formKey.currentState!.validate()) {
                      context.read<SignInCubit>().signin(email, password);
                    }
                  },
                  text: context.tr("signIn")),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.025,
              ),
              const DontHaveAnAcountView(),
              const OrDivider(),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.03,
              ),
              SocialTextButton(
                image: Assets.imagesGoogle,
                title: context.tr("SigninwithGoogle"),
                onPressed: () {
                  context.read<SignInCubit>().signinWithGoogle();
                },
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.025,
              ),
              SocialTextButton(
                image: Assets.imagesApple,
                title: context.tr("SigninwithApple"),
                onPressed: () {},
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.025,
              ),
              SocialTextButton(
                image: Assets.imagesFacebook,
                title: context.tr("SigninwithFacebook"),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
