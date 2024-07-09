import 'package:flutter/material.dart';
import 'package:fruits_e_commerce_app/core/utils/functions/app_text_styles.dart';
import 'package:go_router/go_router.dart';

AppBar buildAppBar(BuildContext context, {required String title}) {
  return AppBar(
    leading: GestureDetector(
        onTap: () => GoRouter.of(context).pop(),
        child: const Icon(Icons.arrow_back_ios_new)),
    title: Text(title, style: TextStyles.bold19),
    centerTitle: true,
  );
}
