import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme() {
    return ThemeData(
      brightness: Brightness.light,
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: Colors.white,
      ),
      iconTheme: const IconThemeData(color: Colors.green),
      dialogTheme: DialogTheme(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      appBarTheme: const AppBarTheme(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        titleTextStyle: TextStyle(
          fontSize: 22,
          color: Colors.green,
        ),
        centerTitle: true,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          disabledBackgroundColor: Colors.grey[300],
          disabledForegroundColor: Colors.white10,
          fixedSize: const Size(double.maxFinite, 50),
          shadowColor: Colors.green,
          elevation: 4,
          foregroundColor: Colors.white,
          backgroundColor: Colors.green,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          textStyle: TextStyle(fontSize: 12, color: Colors.grey[900]),
        ),
      ),
      hintColor: Colors.grey,
      primaryColor: Colors.green,
      cardColor: Colors.white,
      scaffoldBackgroundColor: Colors.white,
      dividerColor: Colors.grey,
      shadowColor: Colors.black,
      highlightColor: const Color(0xffF5F5F5),
      textTheme: textTheme(),
    );
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
