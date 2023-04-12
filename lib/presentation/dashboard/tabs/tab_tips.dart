import 'package:edukonsel/presentation/core/constants/assets.dart';
import 'package:edukonsel/presentation/core/constants/styles.dart';
import 'package:edukonsel/presentation/core/styles/app_colors.dart';
import 'package:edukonsel/presentation/dashboard/components/card_search.dart';
import 'package:edukonsel/presentation/shared/widgets/cards/card_tips.dart';
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
                    return CardTips(
                      imageUrl: images[index],
                      title:
                          'Tips Memilih Program Studi yang Sesuai dengan Minat dan Bakat',
                      likeCount: 145,
                      timeDesc: '2 hours ago',
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
