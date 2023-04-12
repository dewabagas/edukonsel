import 'package:edukonsel/presentation/core/constants/assets.dart';
import 'package:edukonsel/presentation/core/constants/styles.dart';
import 'package:edukonsel/presentation/core/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BannerHome extends StatefulWidget {
  const BannerHome({super.key});

  @override
  State<BannerHome> createState() => _BannerHomeState();
}

class _BannerHomeState extends State<BannerHome> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Yang baru buat kamu!',
            style: TextStyles.headlineSmall
                .copyWith(fontSize: 18.sp, color: AppColors.primary)),
        SizedBox(height: 8.h),
        Image.asset(AppBanners.bnrFreeConsultation),
      ],
    );
  }
}
