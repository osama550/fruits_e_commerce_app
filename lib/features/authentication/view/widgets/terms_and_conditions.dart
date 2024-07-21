import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fruits_e_commerce_app/core/utils/app_colors.dart';
import 'package:fruits_e_commerce_app/core/utils/functions/app_text_styles.dart';

class TermsAndConditions extends StatefulWidget {
  const TermsAndConditions({super.key});

  @override
  State<TermsAndConditions> createState() => _TermsAndConditionsState();
}

bool isChecked = false;

class _TermsAndConditionsState extends State<TermsAndConditions> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: context.tr("ByCreatingAnAccountYouAgreeTo"),
                  style: TextStyles.semiBold13.copyWith(
                    color: const Color(0xFF949D9E),
                  ),
                ),
                const TextSpan(
                  text: ' ',
                  style: TextStyles.semiBold13,
                ),
                TextSpan(
                  text: context.tr("OurTermsAndConditions"),
                  style: TextStyles.semiBold13.copyWith(
                    color: AppColors.lightPrimaryColor,
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.right,
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Transform.scale(
          scale: 1.1,
          child: Checkbox(
            activeColor: AppColors.primaryColor,
            value: isChecked,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(3.0),
                side: const BorderSide() // Adjust the radius as needed
                ),
            onChanged: (value) {
              setState(() {
                isChecked = value!;
              });
            },
          ),
        ),
      ],
    );
  }
}
