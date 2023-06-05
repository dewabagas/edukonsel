import 'package:auto_route/auto_route.dart';
import 'package:edukonsel/presentation/core/constants/styles.dart';
import 'package:edukonsel/presentation/core/styles/app_colors.dart';
import 'package:edukonsel/presentation/routes/router.gr.dart';
import 'package:edukonsel/presentation/shared/widgets/cards/card_counselor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SectionCounselor extends StatefulWidget {
  const SectionCounselor({super.key});

  @override
  State<SectionCounselor> createState() => _SectionCounselorState();
}

class _SectionCounselorState extends State<SectionCounselor> {
  final List<String> images = [
    'https://upload.wikimedia.org/wikipedia/commons/thumb/6/63/Djimon_Hounsou_%28cropped%29.jpg/1200px-Djimon_Hounsou_%28cropped%29.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/6/63/Djimon_Hounsou_%28cropped%29.jpg/1200px-Djimon_Hounsou_%28cropped%29.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/6/63/Djimon_Hounsou_%28cropped%29.jpg/1200px-Djimon_Hounsou_%28cropped%29.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/6/63/Djimon_Hounsou_%28cropped%29.jpg/1200px-Djimon_Hounsou_%28cropped%29.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Pilih Konselor!',
                style: TextStyles.headlineSmall
                    .copyWith(fontSize: 18.sp, color: AppColors.primary)),
            InkWell(
              onTap: () {
                AutoRouter.of(context).push(const RouteConsultationList());
              },
              child: Text(
                'Lihat Semua',
                style: TextStyles.headlineSmall
                    .copyWith(fontSize: 12.sp, color: AppColors.darkGrey2),
              ),
            )
          ],
        ),
        SizedBox(height: 10.h),
        GridView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 17.w,
                childAspectRatio: 0.8),
            itemCount: images.length,
            itemBuilder: (context, index) {
              return CardCounselor(
                imageUrl: images[index],
                title: 'Eivor Ragnarsson, S.Psi, M.Psi',
                subtitle: 'SIPP : 000000',
                experience: '3 tahun',
                rating: 4.9,
                onPressed: () {
                  AutoRouter.of(context).push(const RouteConsultationDetail());
                },
              );
            })
      ],
    );
  }
}
