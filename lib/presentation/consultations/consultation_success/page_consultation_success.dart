import 'package:auto_route/auto_route.dart';
import 'package:edukonsel/presentation/core/constants/assets.dart';
import 'package:edukonsel/presentation/core/constants/styles.dart';
import 'package:edukonsel/presentation/core/styles/app_colors.dart';
import 'package:edukonsel/presentation/routes/router.gr.dart';
import 'package:edukonsel/presentation/shared/widgets/buttons/button_gradient.dart';
import 'package:edukonsel/presentation/shared/widgets/pages/page_decoration_top.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PageConsultationSuccess extends StatefulWidget {
  const PageConsultationSuccess({super.key});

  @override
  State<PageConsultationSuccess> createState() =>
      _PageConsultationSuccessState();
}

class _PageConsultationSuccessState extends State<PageConsultationSuccess> {
  @override
  Widget build(BuildContext context) {
    return PageDecorationTop(
      appBarTitle: 'Reservasi Sukses',
      child: Stack(children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 44.w),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox.shrink(),
                Column(
                  children: [
                    SvgPicture.asset(
                      AppIllustrations.illWaiting,
                      width: 200.w,
                      height: 200.h,
                    ),
                    SizedBox(height: 30.h),
                    Text(
                      'Reservasi Sukses',
                      style: TextStyles.headlineSmall,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      'Silahkan kamu cek halaman konsultasi kamu. Semoga konsultasi kamu berjalan lancar ya!',
                      style: TextStyles.bodyMedium,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20.h),
                  child: ButtonGradient(
                      title: 'Okay, I Understand',
                      onPressed: () {
                        AutoRouter.of(context).push(const RouteDashboard());
                      }),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
