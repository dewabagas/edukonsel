import 'package:edukonsel/presentation/core/constants/app_constants.dart';
import 'package:edukonsel/presentation/core/constants/styles.dart';
import 'package:edukonsel/presentation/core/styles/app_colors.dart';
import 'package:edukonsel/presentation/dashboard/components/banner_home.dart';
import 'package:edukonsel/presentation/dashboard/components/section_counselor.dart';
import 'package:edukonsel/presentation/shared/widgets/pages/page_arc_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabHomePatient extends StatefulWidget {
  const TabHomePatient({super.key});

  @override
  State<TabHomePatient> createState() => _TabHomePatientState();
}

class _TabHomePatientState extends State<TabHomePatient> {
  @override
  Widget build(BuildContext context) {
    return PageArcImage(
        child: ListView(
      padding: EdgeInsets.symmetric(horizontal: 26.w),
      children: [
        SizedBox(height: 64.h),
        Center(
            child: Text(
          'Selamat malam, Bagas!',
          style: TextStyles.headlineSmall
              .copyWith(color: AppColors.brokenWhite, fontSize: 22.sp),
        )),
        SizedBox(height: 127.h),
        const BannerHome(),
        SizedBox(height: 20.h),
        const SectionCounselor()
      ],
    ));
  }
}
