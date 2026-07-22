import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_text_style.dart';

class AppTheme {
  const AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    extensions: const <ThemeExtension<dynamic>>[AppColors.light()],
    colorScheme: ColorScheme.light(
      primary: const AppColors.light().primary,
      secondary: const AppColors.light().secondary,
      error: const AppColors.light().error,
      surface: const AppColors.light().surface,
    ),
    dividerTheme: DividerThemeData(color: const AppColors.light().dividerColor),
    textTheme: TextTheme(
      bodyLarge: AppTextStyles.light().bodyLarge,
      bodyMedium: AppTextStyles.light().bodyMedium,
      bodySmall: AppTextStyles.light().bodySmall,
      headlineLarge: AppTextStyles.light().headlineLarge,
      headlineMedium: AppTextStyles.light().headlineMedium,
      headlineSmall: AppTextStyles.light().headlineSmall,
      titleLarge: AppTextStyles.light().titleLarge,
      titleMedium: AppTextStyles.light().titleMedium,
      titleSmall: AppTextStyles.light().titleSmall,
      labelLarge: AppTextStyles.light().labelLarge,
      labelSmall: AppTextStyles.light().labelSmall,
      labelMedium: AppTextStyles.light().labelMedium,
    ),
  );

  static ThemeData darkTheme = lightTheme.copyWith(
    brightness: Brightness.dark,
    extensions: const <ThemeExtension<dynamic>>[AppColors.dark()],
    colorScheme: ColorScheme.dark(
      primary: const AppColors.dark().primary,
      secondary: const AppColors.dark().secondary,
      error: const AppColors.dark().error,
      surface: const AppColors.dark().surface,
    ),
    dividerTheme: DividerThemeData(color: const AppColors.dark().dividerColor),
    textTheme: TextTheme(
      bodyLarge: AppTextStyles.dark().bodyLarge,
      bodyMedium: AppTextStyles.dark().bodyMedium,
      bodySmall: AppTextStyles.dark().bodySmall,
      headlineLarge: AppTextStyles.dark().headlineLarge,
      headlineMedium: AppTextStyles.dark().headlineMedium,
      headlineSmall: AppTextStyles.dark().headlineSmall,
      titleLarge: AppTextStyles.dark().titleLarge,
      titleMedium: AppTextStyles.dark().titleMedium,
      titleSmall: AppTextStyles.dark().titleSmall,
      labelLarge: AppTextStyles.dark().labelLarge,
      labelSmall: AppTextStyles.dark().labelSmall,
      labelMedium: AppTextStyles.dark().labelMedium,
    ),
  );
}
