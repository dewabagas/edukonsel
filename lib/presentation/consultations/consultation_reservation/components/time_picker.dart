import 'package:edukonsel/presentation/core/constants/styles.dart';
import 'package:edukonsel/presentation/core/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TimePicker extends StatefulWidget {
  const TimePicker({super.key});

  @override
  State<TimePicker> createState() => _TimePickerState();
}

class _TimePickerState extends State<TimePicker> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Waktu',
            style: TextStyles.titleMedium.copyWith(color: AppColors.charcoal)),
        SizedBox(height: 12.h),
        GridView.count(
          crossAxisCount: 4,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          primary: true,
          shrinkWrap: true,
          childAspectRatio: 2.5,
          physics: const NeverScrollableScrollPhysics(),
          children: List.generate(8, (index) {
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
              decoration: BoxDecoration(
                color: AppColors.lightGrey6, // warna background
                borderRadius:
                    BorderRadius.circular(20.r), // radius sudut melengkung
              ),
              child: Center(
                child: Text(
                  '09:00',
                  style: TextStyles.headlineSmall
                      .copyWith(color: AppColors.charcoal, fontSize: 12.sp),
                ),
              ),
            );
          }),
        ),
      ],
    );
  }
}
