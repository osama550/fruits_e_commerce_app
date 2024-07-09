import 'package:flutter/material.dart';
import 'package:fruits_e_commerce_app/core/utils/app_colors.dart';

class AppTheme {
  static ThemeData lightTheme() {
    return ThemeData(
        fontFamily: 'Cairo',
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primaryColor,
        ));
  }

  static TextTheme textTheme() {
    return const TextTheme(
      titleLarge: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.normal,
        fontSize: 36,
      ),
      titleMedium: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.normal,
        fontSize: 24,
      ),
      bodyLarge: TextStyle(
        color: Colors.green,
        fontWeight: FontWeight.normal,
        fontSize: 18,
      ),
      bodyMedium: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.normal,
        fontSize: 14,
      ),
      bodySmall: TextStyle(
        color: Color(0xff838383),
        fontWeight: FontWeight.normal,
        fontSize: 14,
      ),
    );
  }
}
