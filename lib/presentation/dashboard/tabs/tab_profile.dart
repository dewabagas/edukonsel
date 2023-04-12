import 'package:edukonsel/presentation/core/constants/assets.dart';
import 'package:edukonsel/presentation/core/constants/styles.dart';
import 'package:edukonsel/presentation/core/styles/app_colors.dart';
import 'package:edukonsel/presentation/dashboard/components/card_profile_item.dart';
import 'package:edukonsel/presentation/shared/widgets/images/image_circle.dart';
import 'package:edukonsel/presentation/shared/widgets/pages/draggable_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabProfile extends StatefulWidget {
  const TabProfile({super.key});

  @override
  State<TabProfile> createState() => _TabProfileState();
}

class _TabProfileState extends State<TabProfile> {
  @override
  Widget build(BuildContext context) {
    return DraggablePage(
        title: Text('Bagas Dewanggono',
            style: TextStyles.headlineSmall.copyWith(fontSize: 14.sp)),
        headerExpandedHeight: 0.20,
        headerWidget: buildProfileHeader(),
        body: [buildProfileBody()]);
  }

  Widget buildProfileHeader() {
    return Container(
      color: AppColors.primary,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 60.h),
          Center(
            child: ImageCircle(
              width: 70.w,
              height: 70.w,
              image:
                  'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/cd31a73a-791d-418a-83fd-8a67d6675b5d/defblg5-83ef5606-1c1f-415f-bc17-b92294b39a01.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2NkMzFhNzNhLTc5MWQtNDE4YS04M2ZkLThhNjdkNjY3NWI1ZFwvZGVmYmxnNS04M2VmNTYwNi0xYzFmLTQxNWYtYmMxNy1iOTIyOTRiMzlhMDEuanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.X9OJ4FrFBKSoGILFvz0_g0y34KbbNAkhsL1o0JKRg_o',
            ),
          ),
          SizedBox(height: 5.h),
          Text('Bagas Dewanggono',
              style: TextStyles.headlineSmall
                  .copyWith(fontSize: 14.sp, color: AppColors.brokenWhite)),
          SizedBox(height: 5.h),
          Text('+6285158046944',
              style: TextStyles.bodyVerySmall
                  .copyWith(color: AppColors.brokenWhite)),
          SizedBox(height: 5.h),
          Text('bagas.dewa@upi.edu',
              style: TextStyles.bodyVerySmall
                  .copyWith(color: AppColors.brokenWhite))
        ],
      ),
    );
  }

  Widget buildProfileBody() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10.w, bottom: 10.h),
            child: Text(
              'Account',
              style: TextStyles.headlineSmall.copyWith(fontSize: 16.sp),
            ),
          ),
          CardProfileItem(
            label: 'Akunku',
            hasDivider: true,
            icon: AppIcons.icMyAccount,
            onTap: () {},
          ),
          CardProfileItem(
            label: 'Riwayat Transaksi',
            hasDivider: true,
            icon: AppIcons.icHistory,
            onTap: () {},
          ),
          CardProfileItem(
            label: 'Pengaturan',
            hasDivider: true,
            icon: AppIcons.icSetting,
            onTap: () {},
          ),
          CardProfileItem(
            label: 'Logout',
            hasDivider: false,
            icon: AppIcons.icLogout,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
