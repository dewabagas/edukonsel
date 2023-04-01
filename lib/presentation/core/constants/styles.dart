import 'package:edukonsel/presentation/core/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

double screenWidth =
    MediaQueryData.fromWindow(WidgetsBinding.instance.window).size.width;
double screenHeight =
    MediaQueryData.fromWindow(WidgetsBinding.instance.window).size.height;

class TextStyles {
  static const TextStyle quicksand =
      TextStyle(fontFamily: "Quicksand", fontWeight: FontWeight.w500);

  static TextStyle get displayLarge => quicksand.copyWith(
      color: AppColors.primary, fontSize: 57.sp, fontWeight: FontWeight.w700);
  static TextStyle get displayMedium => quicksand.copyWith(
      color: AppColors.primary, fontSize: 45.sp, fontWeight: FontWeight.w700);
  static TextStyle get displaySmall => quicksand.copyWith(
      color: AppColors.primary, fontSize: 44.sp, fontWeight: FontWeight.w700);

  static TextStyle get headlineLarge => quicksand.copyWith(
      color: AppColors.primary, fontSize: 32.sp, fontWeight: FontWeight.w700);
  static TextStyle get headlineMedium => quicksand.copyWith(
      color: AppColors.primary, fontSize: 28.sp, fontWeight: FontWeight.w700);
  static TextStyle get headlineSmall => quicksand.copyWith(
      color: AppColors.primary, fontSize: 24.sp, fontWeight: FontWeight.w700);

  static TextStyle get titleLarge => quicksand.copyWith(
      color: AppColors.primary, fontSize: 22.sp, fontWeight: FontWeight.w600);
  static TextStyle get titleMedium => quicksand.copyWith(
        color: AppColors.primary,
        fontSize: 16.sp,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get titleSmall => quicksand.copyWith(
        color: AppColors.primary,
        fontSize: 14.sp,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get labelLarge => quicksand.copyWith(
        color: AppColors.primary,
        fontSize: 14.sp,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get labelMedium => quicksand.copyWith(
        color: AppColors.primary,
        fontSize: 12.sp,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get labelSmall => quicksand.copyWith(
        color: AppColors.primary,
        fontSize: 11.sp,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get bodyLarge => quicksand.copyWith(
        color: AppColors.primary,
        fontSize: 16.sp,
      );
  static TextStyle get bodyMedium => quicksand.copyWith(
        color: AppColors.primary,
        fontSize: 14.sp,
      );
  static TextStyle get bodySmall => quicksand.copyWith(
        color: AppColors.primary,
        fontSize: 12.sp,
      );
}
