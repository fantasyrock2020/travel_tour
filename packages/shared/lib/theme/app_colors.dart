import 'package:flutter/material.dart';

class AppColors extends ThemeExtension<AppColors> {
  const AppColors.light({
    this.primary = const Color(0xFF7762FF),
    this.secondary = const Color(0xFF00BFA6),
    this.surface = const Color(0xFFFFFFFF),
    this.error = const Color(0xFFF34B4B),
    this.textColor = const Color(0xFF17132A),
    this.enableBackgroundButton = const Color(0xFF7762FF),
    this.enableForegroundButton = const Color(0xFFFFFFFF),
    this.disabledBackgroundButton = const Color(0xFFBFBFC2),
    this.disabledForegroundButton = const Color(0xFF17132A),
    this.dividerColor = const Color(0xFFE0E0E2),
    this.selectedColor = const Color(0xFF7762FF),
    this.unselectedColor = const Color(0xFFB7B7BE),
  });

  const AppColors.dark()
    : this.light(
        primary: const Color(0xff000000),
        secondary: const Color(0xFF03DAC6),
        surface: const Color(0xFF1C1C1E),
        error: const Color(0xFFF34B4B),
        textColor: const Color(0xFFFFFFFF),
        enableBackgroundButton: const Color(0xff000000),
        enableForegroundButton: const Color(0xFFFFFFFF),
        disabledBackgroundButton: const Color(0xFF4B4B4B),
        disabledForegroundButton: const Color(0xFFFFFFFF),
        dividerColor: const Color(0xFF3A3A3C),
        selectedColor: const Color(0xFF03DAC6),
        unselectedColor: const Color(0xFF8E8E93),
      );

  final Color primary;
  final Color secondary;
  final Color surface;
  final Color error;
  final Color textColor;
  final Color enableBackgroundButton;
  final Color enableForegroundButton;
  final Color disabledBackgroundButton;
  final Color disabledForegroundButton;
  final Color dividerColor;
  final Color selectedColor;
  final Color unselectedColor;

  @override
  AppColors copyWith({
    Color? primary,
    Color? secondary,
    Color? surface,
    Color? error,
    Color? textColor,
    Color? enableBackgroundButton,
    Color? enableForegroundButton,
    Color? disabledBackgroundButton,
    Color? disabledForegroundButton,
    Color? dividerColor,
    Color? selectedColor,
    Color? unselectedColor,
  }) {
    return AppColors.light(
      primary: primary ?? this.primary,
      secondary: secondary ?? this.secondary,
      surface: surface ?? this.surface,
      error: error ?? this.error,
      textColor: textColor ?? this.textColor,
      enableBackgroundButton:
          enableBackgroundButton ?? this.enableBackgroundButton,
      enableForegroundButton:
          enableForegroundButton ?? this.enableForegroundButton,
      disabledBackgroundButton:
          disabledBackgroundButton ?? this.disabledBackgroundButton,
      disabledForegroundButton:
          disabledForegroundButton ?? this.disabledForegroundButton,
      dividerColor: dividerColor ?? this.dividerColor,
      selectedColor: selectedColor ?? this.selectedColor,
      unselectedColor: unselectedColor ?? this.unselectedColor,
    );
  }

  @override
  AppColors lerp(ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) {
      return this;
    }
    return AppColors.light(
      primary: Color.lerp(primary, other.primary, t)!,
      secondary: Color.lerp(secondary, other.secondary, t)!,
      surface: Color.lerp(surface, other.surface, t)!,
      error: Color.lerp(error, other.error, t)!,
      textColor: Color.lerp(textColor, other.textColor, t)!,
      enableBackgroundButton: Color.lerp(
        enableBackgroundButton,
        other.enableBackgroundButton,
        t,
      )!,
      enableForegroundButton: Color.lerp(
        enableForegroundButton,
        other.enableForegroundButton,
        t,
      )!,
      disabledBackgroundButton: Color.lerp(
        disabledBackgroundButton,
        other.disabledBackgroundButton,
        t,
      )!,
      disabledForegroundButton: Color.lerp(
        disabledForegroundButton,
        other.disabledForegroundButton,
        t,
      )!,
      dividerColor: Color.lerp(dividerColor, other.dividerColor, t)!,
      selectedColor: Color.lerp(selectedColor, other.selectedColor, t)!,
      unselectedColor: Color.lerp(unselectedColor, other.unselectedColor, t)!,
    );
  }
}
