import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData customTheme = ThemeData(
    useMaterial3: true,

    colorScheme: const ColorScheme.dark(
      primary: Color(0xfffca311),
      secondary: Color(0xff000000),
      tertiary: Color(0xfff1faee),
      onSecondary: Color(0xffe5e5e5),
      onTertiary: Colors.grey,
    ),

    textTheme: const TextTheme(
      // Display
      displayLarge: TextStyle(
        fontSize: 72,
        fontWeight: FontWeight.w700,
        height: 1.1,
      ),

      displayMedium: TextStyle(
        fontSize: 60,
        fontWeight: FontWeight.w700,
        height: 1.1,
      ),

      displaySmall: TextStyle(
        fontSize: 48,
        fontWeight: FontWeight.w600,
        height: 1.15,
      ),

      // Headline
      headlineLarge: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.w700,
        height: 1.2,
      ),

      headlineMedium: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w700,
        height: 1.25,
      ),

      headlineSmall: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w600,
        height: 1.3,
      ),

      // Titles
      titleLarge: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        height: 1.3,
      ),

      titleMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        height: 1.35,
      ),

      // Body
      bodyLarge: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w400,
        height: 1.6,
        letterSpacing: 0.2,
      ),

      bodyMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        height: 1.6,
        letterSpacing: 0.15,
      ),

      bodySmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 1.5,
      ),

      // Labels / Buttons
      labelLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.2,
      ),

      labelMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.2,
      ),

      labelSmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.3,
      ),
    ),
  );
}
