import 'package:car_store_app/product/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  ThemeData get theme {
    return ThemeData(
      appBarTheme: _appBarTheme,
      scaffoldBackgroundColor: AppColors.background,
      colorScheme: _colorScheme,
    );
  }

  AppBarTheme get _appBarTheme => const AppBarTheme(
        centerTitle: true,
        elevation: 0,
      );

  ColorScheme get _colorScheme => ThemeData().colorScheme.copyWith(
        primary: AppColors.orange,
      );
}
