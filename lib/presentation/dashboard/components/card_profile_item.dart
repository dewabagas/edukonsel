import 'package:edukonsel/presentation/core/constants/assets.dart';
import 'package:edukonsel/presentation/core/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardProfileItem extends StatelessWidget {
  const CardProfileItem(
      {Key? key,
      this.icon = "",
      this.label = "",
      this.onTap,
      this.textColor,
      this.hasDivider = true})
      : super(key: key);
  final String label;
  final String icon;
  final Color? textColor;
  final Function? onTap;
  final bool hasDivider;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.h),
      child: InkWell(
        onTap: onTap as void Function()?,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        icon,
                        height: 30.w,
                        width: 30.w,
                      ),
                      SizedBox(width: 20.w),
                      Text(
                        label,
                        style: TextStyle(
                            color: textColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  SvgPicture.asset(AppIcons.icChevronRight)
                ],
              ),
            ),
            SizedBox(height: 10.h),
            hasDivider
                ? const Divider(
                    color: AppColors.lightGrey3,
                    thickness: 0.5,
                  )
                : const SizedBox.shrink()
          ],
        ),
      ),
    );
  }
}
