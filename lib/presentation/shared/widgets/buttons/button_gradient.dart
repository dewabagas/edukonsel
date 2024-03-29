import 'package:edukonsel/presentation/core/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class ButtonGradient extends StatelessWidget {
  final String? title;
  final Function? onPressed;
  final bool enabled;
  final TextStyle? textStyle;
  final double? height;
  final double? width;
  final bool isLoading;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final EdgeInsets? padding;
  final EdgeInsets? margin;

  const ButtonGradient(
      {Key? key,
      required this.title,
      required this.onPressed,
      this.textStyle,
      this.enabled = true,
      this.height,
      this.width,
      this.isLoading = false,
      this.prefixIcon,
      this.padding,
      this.margin,
      this.suffixIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    BoxDecoration decoration = BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(30.r)),
      gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.topRight,
          tileMode: TileMode.clamp,
          colors: [AppColors.primary, AppColors.primary.withOpacity(0.49)]),
    );
    if (!enabled) {
      decoration = BoxDecoration(
        color: AppColors.grey,
        borderRadius: BorderRadius.circular(10.r),
      );
    }
    Color textColor = enabled ? AppColors.white : AppColors.black;
    return Container(
      decoration: decoration,
      margin: margin ?? EdgeInsets.zero,
      child: MaterialButton(
        padding:
            padding ?? EdgeInsets.symmetric(horizontal: 32.w, vertical: 4.h),
        height: height ?? 44.h,
        minWidth: width ?? double.infinity,
        onPressed: enabled ? onPressed as void Function()? : null,
        child: isLoading
            ? SizedBox(
                height: 20.h,
                child: Center(
                  child: SpinKitWave(
                    color: AppColors.white,
                    size: 20.h,
                  ),
                ),
              )
            : Row(
                mainAxisAlignment: prefixIcon == null && suffixIcon == null
                    ? MainAxisAlignment.center
                    : MainAxisAlignment.spaceBetween,
                children: [
                  if (prefixIcon != null) prefixIcon!,
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6.0),
                    child: Text(
                      title!,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: textColor),
                    ),
                  ),
                  if (suffixIcon != null) suffixIcon!,
                ],
              ),
      ),
    );
  }
}
