import 'package:edukonsel/presentation/core/constants/styles.dart';
import 'package:edukonsel/presentation/core/styles/app_colors.dart';
import 'package:edukonsel/presentation/shared/widgets/others/custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabHistory extends StatelessWidget {
  final int selectedIndex;
  final Function? onTap;
  final void Function(int)? onValueChanged;

  const TabHistory({
    required this.selectedIndex,
    this.onTap,
    this.onValueChanged,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: CustomSlidingSegmentedControl<int>(
      initialValue: selectedIndex,
      isStretch: true,
      height: 40.h,
      innerPadding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(30.r),
      ),
      thumbDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.r),
          color: AppColors.brokenWhite),
      duration: const Duration(milliseconds: 250),
      curve: Curves.easeInToLinear,
      children: {
        0: Text(
          'Aktif',
          style: TextStyles.bodySmall.copyWith(
              fontSize: 14.sp,
              fontWeight:
                  selectedIndex == 0 ? FontWeight.w600 : FontWeight.w400),
        ),
        1: Text(
          'Selesai',
          style: TextStyles.bodySmall.copyWith(
              fontSize: 14.sp,
              fontWeight:
                  selectedIndex == 1 ? FontWeight.w600 : FontWeight.w400),
        ),
      },
      onValueChanged: onValueChanged!,
    ));
  }
}
