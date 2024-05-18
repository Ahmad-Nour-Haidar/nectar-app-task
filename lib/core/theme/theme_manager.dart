import 'package:flutter/material.dart';

import '../assets/app_fonts.dart';
import 'app_colors.dart';

class ThemeManager {
  static ThemeData get light {
    final ColorScheme colorScheme = const ColorScheme.light().copyWith(
      primary: AppColors.primary,
      secondary: AppColors.primary.withAlpha(230),
      background: Colors.white,
    );
    return ThemeData(
      colorScheme: colorScheme,
      fontFamily: AppFonts.poppins,
      brightness: Brightness.light,
      useMaterial3: true,
      primaryColor: AppColors.primary,
      inputDecorationTheme: const InputDecorationTheme(
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
      ),
    );
  }
}
