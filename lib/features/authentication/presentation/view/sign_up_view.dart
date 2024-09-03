import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_e_commerce_app/core/utils/widgets/build_error_bar.dart';
import 'package:fruits_e_commerce_app/core/utils/widgets/custom_app_bar.dart';
import 'package:fruits_e_commerce_app/features/authentication/presentation/view/controller/signup_cubit/sign_up_cubit.dart';
import 'package:fruits_e_commerce_app/features/authentication/presentation/view/widgets/sign_up_view_body.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(context, title: context.tr("CreateAccount")),
        body: BlocConsumer<SignUpCubit, SignUpState>(
          listener: (context, state) {
            if (state is SignUpFailure) {
              buildErrorBar(context, context.tr(state.message));
            }
            if (state is SignUpSuccess) {}
          },
          builder: (context, state) {
            return ModalProgressHUD(
                inAsyncCall: state is SignUpLoading ? true : false,
                child: const SignUpViewBody());
          },
        ));
  }
}
