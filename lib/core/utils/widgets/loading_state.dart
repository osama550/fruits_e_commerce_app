import 'package:flutter/material.dart';
import 'package:fruits_e_commerce_app/core/constant/color.dart';

class LoadingStateView extends StatelessWidget {
  const LoadingStateView({
    super.key,
    this.color = AppColors.foucsBorderColor,
  });
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: CircularProgressIndicator(
      color: color,
    ));
  }
}
