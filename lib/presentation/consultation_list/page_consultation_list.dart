import 'package:edukonsel/domain/consultation_list/model/filter_item.dart';
import 'package:edukonsel/presentation/core/constants/assets.dart';
import 'package:edukonsel/presentation/core/constants/styles.dart';
import 'package:edukonsel/presentation/core/styles/app_colors.dart';
import 'package:edukonsel/presentation/dashboard/components/card_search.dart';
import 'package:edukonsel/presentation/shared/widgets/cards/card_counselor_wide.dart';
import 'package:edukonsel/presentation/shared/widgets/cards/card_tips.dart';
import 'package:edukonsel/presentation/shared/widgets/others/custom_bottom_sheet.dart';
import 'package:edukonsel/presentation/shared/widgets/pages/page_decoration_top.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:multi_select_flutter/bottom_sheet/multi_select_bottom_sheet.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';

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

  static List<FilterItem> locationItems = [
    FilterItem(id: 1, name: 'Terdekat'),
    FilterItem(id: 1, name: 'Jabodetabek'),
    FilterItem(id: 1, name: 'Jawa Barat'),
    FilterItem(id: 1, name: 'Banten'),
    FilterItem(id: 1, name: 'Bandung'),
    FilterItem(id: 1, name: 'Cimahi'),
    FilterItem(id: 1, name: 'Kab. Bandung Barat'),
    FilterItem(id: 1, name: 'Kab. Bandung'),
    FilterItem(id: 1, name: 'Jakarta'),
    FilterItem(id: 1, name: 'Jogjakarta'),
    FilterItem(id: 1, name: 'Surakarta'),
    FilterItem(id: 1, name: 'Surabaya'),
    FilterItem(id: 1, name: 'Bogor'),
  ];

  final items =
      locationItems.map((item) => MultiSelectItem(item, item.name!)).toList();
  List<FilterItem> selectedLocation = [];
  final _multiSelectKey = GlobalKey<FormFieldState>();
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
                      onTap: () {
                        // CustomBottomSheet.showAutoHeightBottomSheet(
                        //     context: context, child: buildFilter());
                      },
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

  Widget buildFilter() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 45.h),
        Text('Filter Pencarianmu',
            style: TextStyles.headlineSmall.copyWith(fontSize: 15.sp)),
        SizedBox(height: 10.h),
        Text('Lokasi klinik psikolog',
            style: TextStyles.bodyLarge
                .copyWith(fontSize: 15.sp, color: AppColors.darkGrey)),
        SizedBox(height: 45.h),
        // Container(
        //   child: MultiSelectBottomSheet(
        //     items: items,
        //     initialValue: selectedLocation,
        //     onConfirm: (values) {},
        //     maxChildSize: 0.8,
        //   ),
        // )
      ],
    );
  }
}
