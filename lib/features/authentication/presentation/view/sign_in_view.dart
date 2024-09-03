import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_e_commerce_app/core/utils/widgets/build_error_bar.dart';
import 'package:fruits_e_commerce_app/core/utils/widgets/custom_app_bar.dart';
import 'package:fruits_e_commerce_app/core/utils/widgets/custom_progress_hud.dart';
import 'package:fruits_e_commerce_app/features/authentication/presentation/view/controller/signin_cubit/sign_in_cubit.dart';
import 'package:fruits_e_commerce_app/features/authentication/presentation/view/widgets/sign_in_view_body.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: context.tr("signIn")),
      body: BlocConsumer<SignInCubit, SignInState>(
        listener: (context, state) {
          if (state is SignInFailure) {
            buildErrorBar(context, context.tr(state.message));
          }
        },
        builder: (context, state) {
          return CustomProgressHud(
              isLoading: state is SignInLoading ? true : false,
              child: const SigninViewBody());
        },
      ),
    );
  }
}
