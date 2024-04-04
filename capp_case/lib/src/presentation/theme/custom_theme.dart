import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData get theme {
    final theme = ThemeData();

    final elevatedButtonThemeData = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        padding: const EdgeInsets.all(16),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
    );

    final outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(color: Colors.black),
    );

    final inputDecorationTheme = InputDecorationTheme(
      contentPadding: const EdgeInsets.all(16),
      isDense: true,
      border: outlineInputBorder,
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
    );

    return theme.copyWith(
      elevatedButtonTheme: elevatedButtonThemeData,
      inputDecorationTheme: inputDecorationTheme,
    );
  }
}
