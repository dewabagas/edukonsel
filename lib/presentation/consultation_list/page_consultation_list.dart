import 'package:edukonsel/presentation/core/constants/assets.dart';
import 'package:edukonsel/presentation/dashboard/components/card_search.dart';
import 'package:edukonsel/presentation/shared/widgets/cards/card_counselor_wide.dart';
import 'package:edukonsel/presentation/shared/widgets/cards/card_tips.dart';
import 'package:edukonsel/presentation/shared/widgets/pages/page_decoration_top.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class PageConsultationList extends StatefulWidget {
  const PageConsultationList({super.key});

  @override
  State<PageConsultationList> createState() => _PageConsultationListState();
}

class _PageConsultationListState extends State<PageConsultationList> {
  final List<String> images = [
    'https://cdn.vox-cdn.com/thumbor/QorNdtND2JYmwqupoO3VW8uyNJU=/1400x1400/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/22455479/STB_Teaser_1_Sht_v4_lg.jpg',
    'https://cdn.vox-cdn.com/thumbor/QorNdtND2JYmwqupoO3VW8uyNJU=/1400x1400/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/22455479/STB_Teaser_1_Sht_v4_lg.jpg',
    'https://cdn.vox-cdn.com/thumbor/QorNdtND2JYmwqupoO3VW8uyNJU=/1400x1400/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/22455479/STB_Teaser_1_Sht_v4_lg.jpg',
    'https://cdn.vox-cdn.com/thumbor/QorNdtND2JYmwqupoO3VW8uyNJU=/1400x1400/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/22455479/STB_Teaser_1_Sht_v4_lg.jpg',
    'https://cdn.vox-cdn.com/thumbor/QorNdtND2JYmwqupoO3VW8uyNJU=/1400x1400/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/22455479/STB_Teaser_1_Sht_v4_lg.jpg',
    'https://cdn.vox-cdn.com/thumbor/QorNdtND2JYmwqupoO3VW8uyNJU=/1400x1400/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/22455479/STB_Teaser_1_Sht_v4_lg.jpg',
    'https://cdn.vox-cdn.com/thumbor/QorNdtND2JYmwqupoO3VW8uyNJU=/1400x1400/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/22455479/STB_Teaser_1_Sht_v4_lg.jpg',
    'https://cdn.vox-cdn.com/thumbor/QorNdtND2JYmwqupoO3VW8uyNJU=/1400x1400/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/22455479/STB_Teaser_1_Sht_v4_lg.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return PageDecorationTop(
        appBarTitle: 'Consultation',
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: Column(
              children: [
                SizedBox(height: 20.h),
                Row(
                  children: [
                    const Expanded(child: CardSearch()),
                    SizedBox(width: 10.w),
                    InkWell(
                      child: SvgPicture.asset(AppIcons.icFilter),
                    )
                  ],
                ),
                SizedBox(height: 25.h),
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: images.length,
                    itemBuilder: (BuildContext context, int index) {
                      return CardCounselorWide(
                        imageUrl: images[index],
                        title: 'Shang Chi, S.Psi, M.Psi.',
                        subtitle: 'SIPP : 000000',
                        experience: '3 tahun',
                        location: 'Bandung',
                        rating: 4.8,
                        onPressed: () {},
                      );
                    })
              ],
            ),
          ),
        ));
  }
}
