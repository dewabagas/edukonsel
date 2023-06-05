import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:edukonsel/domain/onboarding/model/introduction.dart';
import 'package:edukonsel/presentation/core/constants/assets.dart';
import 'package:edukonsel/presentation/core/constants/styles.dart';
import 'package:edukonsel/presentation/core/styles/app_colors.dart';
import 'package:edukonsel/presentation/routes/router.gr.dart';
import 'package:edukonsel/presentation/shared/widgets/buttons/button_gradient.dart';
import 'package:edukonsel/presentation/shared/widgets/pages/page_arc_bottom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class PageOnboarding extends StatefulWidget {
  const PageOnboarding({super.key});

  @override
  State<PageOnboarding> createState() => _PageOnboardingState();
}

class _PageOnboardingState extends State<PageOnboarding> {
  List<Introduction> listOnBoarding = [];
  int currentIndex = 0;
  CarouselController buttonCarouselController = CarouselController();
  @override
  void initState() {
    super.initState();
    setupOnboarding();
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return PageArcBottom(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 90.h),
            child: CarouselSlider(
              items: listOnBoarding.map((onBoarding) {
                return SvgPicture.asset(onBoarding.image ?? '',
                    fit: BoxFit.cover);
              }).toList(),
              carouselController: buttonCarouselController,
              options: CarouselOptions(
                height: 455.h,
                autoPlay: false,
                viewportFraction: 1,
                reverse: false,
                enableInfiniteScroll: false,
                enlargeCenterPage: true,
                onPageChanged: (paramIndex, reason) {
                  setState(() {
                    currentIndex = paramIndex;
                  });
                  log(currentIndex.toString() + reason.name);
                },
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 29.w),
              child: Column(
                children: [
                  SizedBox(height: 24.h),
                  Text(
                    listOnBoarding[currentIndex].title ?? '',
                    style: TextStyles.headlineSmall
                        .copyWith(fontSize: 20.sp, color: AppColors.black),
                  ),
                  SizedBox(height: 10.h),
                  Text(listOnBoarding[currentIndex].desc ?? '',
                      style: TextStyles.titleMedium
                          .copyWith(color: AppColors.grey, fontSize: 15.sp),
                      textAlign: TextAlign.center),
                  SizedBox(height: 53.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: listOnBoarding.asMap().entries.map((entry) {
                      return GestureDetector(
                        onTap: () =>
                            buttonCarouselController.animateToPage(entry.key),
                        child: currentIndex == entry.key
                            ? Container(
                                width: 43.w,
                                height: 7.w,
                                margin: EdgeInsets.only(right: 3.w),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100.r),
                                    color: AppColors.primary),
                              )
                            : Container(
                                width: 7.w,
                                height: 7.w,
                                margin: EdgeInsets.only(right: 3.w),
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColors.primary),
                              ),
                      );
                    }).toList(),
                  ),
                  SizedBox(height: 23.h),
                  ButtonGradient(
                      suffixIcon: SvgPicture.asset(AppIcons.icArrowRight),
                      title: '',
                      height: 50.h,
                      margin: EdgeInsets.symmetric(horizontal: 18.w),
                      width: double.infinity,
                      onPressed: () {
                        log('message');
                        // AutoRouter.of(context).push(const RouteDashboard());
                        AutoRouter.of(context).push(const RouteLogin());
                      }),
                  SizedBox(height: 5.h),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  setupOnboarding() {
    listOnBoarding.add(Introduction(
        id: '0',
        image: AppIllustrations.illConsultation,
        title: 'Bercerita dengan profesional',
        desc:
            'Konsultasi permasalahan pendidikanmu dengan konselor profesional dari seluruh indonesia'));
    listOnBoarding.add(Introduction(
        id: '0',
        image: AppIllustrations.illTexting,
        title: 'Konsultasi fleksibel',
        desc: 'Konsultasi lebih mudah melalui chat atau video conference.'));
  }
}
