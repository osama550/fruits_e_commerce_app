import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fruits_e_commerce_app/core/utils/functions/app_text_styles.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider(color: Colors.grey.shade200)),
        const SizedBox(width: 18),
        Text(
          context.tr("Or"),
          style: TextStyles.semiBold16,
        ),
        const SizedBox(width: 18),
        Expanded(child: Divider(color: Colors.grey.shade200)),
      ],
    );
  }
}
