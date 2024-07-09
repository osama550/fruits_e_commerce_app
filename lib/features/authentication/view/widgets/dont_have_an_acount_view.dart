import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fruits_e_commerce_app/core/utils/app_colors.dart';
import 'package:fruits_e_commerce_app/core/utils/functions/app_text_styles.dart';

class DontHaveAnAcountView extends StatelessWidget {
  const DontHaveAnAcountView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        locale: context.locale,
        children: [
          TextSpan(
            text: context.tr("DontHaveAnAccount"),
            style: TextStyles.semiBold16.copyWith(
              color: const Color(0xFF949D9E),
            ),
          ),
          TextSpan(
            text: ' ',
            style: TextStyles.semiBold16.copyWith(
              color: const Color(0xFF616A6B),
            ),
          ),
          TextSpan(
            text: context.tr("CreateAccount"),
            style:
                TextStyles.semiBold16.copyWith(color: AppColors.primaryColor),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
