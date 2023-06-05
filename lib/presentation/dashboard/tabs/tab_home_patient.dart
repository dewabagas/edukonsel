import 'package:edukonsel/presentation/core/constants/app_constants.dart';
import 'package:edukonsel/presentation/core/constants/assets.dart';
import 'package:edukonsel/presentation/core/constants/styles.dart';
import 'package:edukonsel/presentation/core/styles/app_colors.dart';
import 'package:edukonsel/presentation/dashboard/components/banner_home.dart';
import 'package:edukonsel/presentation/dashboard/components/section_counselor.dart';
import 'package:edukonsel/presentation/shared/widgets/pages/page_arc_image.dart';
import 'package:edukonsel/presentation/shared/widgets/shapes/curved_top_clipper.dart';
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
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 0.w),
        children: [
          ClipPath(
            clipper: CurvedTopClipper(),
            child: Stack(
              children: <Widget>[
                Image.asset(
                  AppImages.bgNight,
                  fit: BoxFit.cover,
                  height: 250.h,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 80.h),
                  child: Align(
                      alignment: Alignment.center, // Ubah ini sesuai kebutuhan
                      child: Text(
                        'Selamat malam, Bagas!',
                        style: TextStyles.headlineSmall.copyWith(
                            color: AppColors.brokenWhite, fontSize: 22.sp),
                      )),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const BannerHome(),
                SizedBox(height: 20.h),
                const SectionCounselor(),
                SizedBox(height: 30.h),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
