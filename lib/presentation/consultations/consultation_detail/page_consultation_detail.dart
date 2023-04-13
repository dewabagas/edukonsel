import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:edukonsel/presentation/consultations/consultation_detail/components/card_review.dart';
import 'package:edukonsel/presentation/core/constants/assets.dart';
import 'package:edukonsel/presentation/core/constants/styles.dart';
import 'package:edukonsel/presentation/core/styles/app_colors.dart';
import 'package:edukonsel/presentation/routes/router.gr.dart';
import 'package:edukonsel/presentation/shared/widgets/buttons/button_gradient.dart';
import 'package:edukonsel/presentation/shared/widgets/pages/page_decoration_top.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class PageConsultationDetail extends StatefulWidget {
  const PageConsultationDetail({super.key});

  @override
  State<PageConsultationDetail> createState() => _PageConsultationDetailState();
}

class _PageConsultationDetailState extends State<PageConsultationDetail> {
  late YoutubePlayerController _controller;

  final List<String> images = [
    'https://staticg.sportskeeda.com/editor/2022/11/1db9b-16681805105538-1920.jpg',
    'https://e1.pxfuel.com/desktop-wallpaper/195/93/desktop-wallpaper-getou-suguru-suguru-geto.jpg',
    'https://static.wikia.nocookie.net/villains/images/2/2b/Johan.jpg/revision/latest?cb=20180612231959',
    'https://e1.pxfuel.com/desktop-wallpaper/195/93/desktop-wallpaper-getou-suguru-suguru-geto.jpg',
    'https://static.wikia.nocookie.net/villains/images/2/2b/Johan.jpg/revision/latest?cb=20180612231959',
    'https://e1.pxfuel.com/desktop-wallpaper/195/93/desktop-wallpaper-getou-suguru-suguru-geto.jpg',
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const player = YoutubePlayerIFrame();
    _controller = YoutubePlayerController(
      initialVideoId: 'FkpJyWVLOYA',
    );
    return PageDecorationTop(
        appBarTitle: 'Profil Psikolog',
        child: Stack(
          children: [
            SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 25.h),
                  Text('Ayo kenalan dengan psikolog!',
                      style: TextStyles.titleMedium),
                  SizedBox(height: 4.h),
                  Text('Play video-nya agar kamu temukan psikolog yang sesuai.',
                      style: TextStyles.bodySmall
                          .copyWith(color: AppColors.paragraphColor)),
                  SizedBox(height: 10.h),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: YoutubePlayerControllerProvider(
                      controller: _controller,
                      child: player,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Shang Chi, S.Psi, M.Psi,',
                        style: TextStyles.titleMedium
                            .copyWith(color: AppColors.charcoal),
                      ),
                      Text(
                        'SIPP : 000000',
                        style: TextStyles.bodyMedium
                            .copyWith(color: AppColors.paragraphColor),
                      )
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            AppIcons.icCase,
                            height: 12.w,
                            width: 12.w,
                          ),
                          SizedBox(width: 8.w),
                          Text('3 tahun',
                              textAlign: TextAlign.center,
                              style: TextStyles.bodySmall
                                  .copyWith(color: AppColors.paragraphColor)),
                        ],
                      ),
                      SizedBox(width: 10.w),
                      Row(
                        children: [
                          SvgPicture.asset(
                            AppIcons.icStar,
                            height: 15.w,
                            width: 15.w,
                          ),
                          SizedBox(width: 8.w),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text('4.8',
                                  textAlign: TextAlign.center,
                                  style: TextStyles.bodySmall.copyWith(
                                      color: AppColors.paragraphColor)),
                              Text(' (124 review pasien)',
                                  textAlign: TextAlign.center,
                                  style: TextStyles.bodyVerySmall.copyWith(
                                      color: AppColors.paragraphColor)),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SvgPicture.asset(
                            AppIcons.icMapMarker,
                            height: 15.w,
                            width: 15.w,
                          ),
                          SizedBox(width: 8.w),
                          SizedBox(
                            width: 250.w,
                            child: Text(
                                'Klinik Permata Indah, Jln. Bengawan No.14, Setiabudi, Bandung Jawa Barat.',
                                style: TextStyles.bodySmall
                                    .copyWith(color: AppColors.paragraphColor)),
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          'Lihat Maps >>',
                          style: TextStyles.bodySmall
                              .copyWith(color: AppColors.primary),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 12.h),
                    child: const Divider(
                        color: AppColors.borderColor, thickness: 1),
                  ),
                  Text(
                    'Spesialis',
                    style: TextStyles.bodySmall.copyWith(
                        color: AppColors.charcoal, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 5.h),
                  Text(
                      'Jangan khawatir jika permasalahanmu tidak ada disini. Kamu masih bisa melakukan konsultasi dengan psikolog manapun!',
                      style: TextStyles.bodySmall
                          .copyWith(color: AppColors.paragraphColor)),
                  SizedBox(height: 10.h),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 15.w, vertical: 5.h),
                        decoration: BoxDecoration(
                          color: AppColors.lightGrey5, // warna background
                          borderRadius: BorderRadius.circular(
                              20.r), // radius sudut melengkung
                        ),
                        child: Text('Pertemanan',
                            style: TextStyles.bodySmall
                                .copyWith(fontWeight: FontWeight.w600)),
                      ),
                      SizedBox(width: 10.75.w),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 15.w, vertical: 5.h),
                        decoration: BoxDecoration(
                          color: AppColors.lightGrey5, // warna background
                          borderRadius: BorderRadius.circular(
                              20.r), // radius sudut melengkung
                        ),
                        child: Text('Pendidikan',
                            style: TextStyles.bodySmall
                                .copyWith(fontWeight: FontWeight.w600)),
                      ),
                      SizedBox(width: 10.75.w),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 15.w, vertical: 5.h),
                        decoration: BoxDecoration(
                          color: AppColors.lightGrey5, // warna background
                          borderRadius: BorderRadius.circular(
                              20.r), // radius sudut melengkung
                        ),
                        child: Text('Keluarga',
                            style: TextStyles.bodySmall
                                .copyWith(fontWeight: FontWeight.w600)),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 12.h),
                    child: const Divider(
                        color: AppColors.borderColor, thickness: 1),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Ulasan Pasien',
                        style: TextStyles.bodySmall.copyWith(
                            color: AppColors.charcoal,
                            fontWeight: FontWeight.w600),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          'Lihat Semua >>',
                          style: TextStyles.bodySmall
                              .copyWith(color: AppColors.primary),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 20.h),
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: images.length,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return CardReview(
                          name: 'Suguru Getou',
                          image: images[index],
                          review:
                              'Selain bisa konsul, aku juga bisa dapet ketawa xixixi. Pokonya terbaikkkk! Bintang 5 sbg tanda terima kasih pun rasanya belum cukup:( Sehat-sehat ya pak!',
                          age: '18 tahun',
                          onTap: () {},
                        );
                      }),
                  SizedBox(height: 70.h),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.only(
                    bottom: 30.h, top: 18.h, left: 20.w, right: 20.w),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 4),
                        blurRadius: 8,
                        color: Colors.grey.shade200)
                  ],
                  border: Border.all(color: Colors.grey.shade200),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.r),
                    topRight: Radius.circular(30.r),
                  ),
                ),
                child: ButtonGradient(
                  onPressed: () {
                    AutoRouter.of(context)
                        .push(const RouteConsultationReservation());
                  },
                  title: 'Konsultasi',
                  height: 50.h,
                ),
              ),
            )
          ],
        ));
  }
}
