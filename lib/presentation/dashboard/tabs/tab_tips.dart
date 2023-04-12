import 'package:edukonsel/presentation/core/constants/assets.dart';
import 'package:edukonsel/presentation/core/constants/styles.dart';
import 'package:edukonsel/presentation/core/styles/app_colors.dart';
import 'package:edukonsel/presentation/dashboard/components/card_search.dart';
import 'package:edukonsel/presentation/shared/widgets/images/card_photo.dart';
import 'package:edukonsel/presentation/shared/widgets/pages/page_decoration_top.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class TabTips extends StatefulWidget {
  const TabTips({super.key});

  @override
  State<TabTips> createState() => _TabTipsState();
}

class _TabTipsState extends State<TabTips> {
  final List<String> images = [
    'https://asset-a.grid.id/crop/0x0:0x0/700x0/photo/2018/08/14/1390833345.jpg',
    'https://asset-a.grid.id/crop/0x0:0x0/700x0/photo/2018/08/14/1390833345.jpg',
    'https://asset-a.grid.id/crop/0x0:0x0/700x0/photo/2018/08/14/1390833345.jpg',
    'https://asset-a.grid.id/crop/0x0:0x0/700x0/photo/2018/08/14/1390833345.jpg',
    'https://asset-a.grid.id/crop/0x0:0x0/700x0/photo/2018/08/14/1390833345.jpg',
    'https://asset-a.grid.id/crop/0x0:0x0/700x0/photo/2018/08/14/1390833345.jpg',
    'https://asset-a.grid.id/crop/0x0:0x0/700x0/photo/2018/08/14/1390833345.jpg',
    'https://asset-a.grid.id/crop/0x0:0x0/700x0/photo/2018/08/14/1390833345.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return PageDecorationTop(
      hasBack: false,
      appBarTitle: 'Tips',
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          child: Column(
            children: [
              SizedBox(height: 20.h),
              const CardSearch(),
              SizedBox(height: 25.h),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: images.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 7.w, vertical: 5.h),
                      margin: EdgeInsets.only(bottom: 15.h),
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(10.r),
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.darkGrey.withOpacity(0.25),
                            spreadRadius: 0,
                            blurRadius: 10,
                            offset: const Offset(0, 0),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          CardPhoto(
                            photoUrl: images[index],
                            imageWidth: 93.w,
                            imageHeight: 93.w,
                          ),
                          SizedBox(width: 15.w),
                          SizedBox(
                            width: 240.w,
                            child: Column(
                              children: [
                                Text(
                                    'Tips Memilih Program Studi yang Sesuai dengan Minat dan Bakat',
                                    style: TextStyles.headlineSmall.copyWith(
                                        color: AppColors.darkGrey2,
                                        fontSize: 18.sp)),
                                SizedBox(height: 10.w),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.favorite,
                                          size: 11.w,
                                          color: AppColors.red2,
                                        ),
                                        SizedBox(width: 5.81.w),
                                        Text('145 Likes',
                                            style: TextStyles.bodyVerySmall)
                                      ],
                                    ),
                                    Text('2 hours ago',
                                        style: TextStyles.bodyVerySmall)
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
