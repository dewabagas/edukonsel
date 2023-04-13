import 'package:auto_route/auto_route.dart';
import 'package:edukonsel/presentation/consultations/consultation_reservation/components/calendar_picker.dart';
import 'package:edukonsel/presentation/consultations/consultation_reservation/components/time_picker.dart';
import 'package:edukonsel/presentation/core/constants/styles.dart';
import 'package:edukonsel/presentation/core/styles/app_colors.dart';
import 'package:edukonsel/presentation/routes/router.gr.dart';
import 'package:edukonsel/presentation/shared/widgets/buttons/button_gradient.dart';
import 'package:edukonsel/presentation/shared/widgets/pages/page_decoration_top.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PageConsultationReservation extends StatefulWidget {
  const PageConsultationReservation({super.key});

  @override
  State<PageConsultationReservation> createState() =>
      _PageConsultationReservationState();
}

class _PageConsultationReservationState
    extends State<PageConsultationReservation> {
  @override
  Widget build(BuildContext context) {
    return PageDecorationTop(
        appBarTitle: 'Reservasi Jadwal',
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30.h),
                    Text('Tanggal Konsultasi Pertama',
                        style: TextStyles.titleMedium
                            .copyWith(color: AppColors.charcoal)),
                    SizedBox(height: 5.h),
                    Text(
                        'Untuk sesi selanjutnya kamu dapat diskusikan dengan psikolog pilihamu.',
                        style: TextStyles.bodySmall
                            .copyWith(color: AppColors.paragraphColor)),
                    SizedBox(height: 10.h),
                    const CalendarPicker(),
                    SizedBox(height: 20.h),
                    const TimePicker(),
                    const Divider(color: AppColors.borderColor, thickness: 1),
                    SizedBox(height: 20.h),
                    Text('Tempat',
                        style: TextStyles.titleMedium
                            .copyWith(color: AppColors.charcoal)),
                    SizedBox(height: 12.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: screenWidth / 2.4,
                          padding: EdgeInsets.symmetric(
                              horizontal: 15.w, vertical: 8.h),
                          decoration: BoxDecoration(
                            color: AppColors.lightGrey6, // warna background
                            borderRadius: BorderRadius.circular(
                                20.r), // radius sudut melengkung
                          ),
                          child: Center(
                            child: Text(
                              'Chat',
                              style: TextStyles.headlineSmall.copyWith(
                                  color: AppColors.charcoal, fontSize: 12.sp),
                            ),
                          ),
                        ),
                        SizedBox(width: 15.w),
                        Container(
                          width: screenWidth / 2.4,
                          padding: EdgeInsets.symmetric(
                              horizontal: 15.w, vertical: 8.h),
                          decoration: BoxDecoration(
                            color: AppColors.lightGrey6, // warna background
                            borderRadius: BorderRadius.circular(
                                20.r), // radius sudut melengkung
                          ),
                          child: Center(
                            child: Text(
                              'Video Conference',
                              style: TextStyles.headlineSmall.copyWith(
                                  color: AppColors.charcoal, fontSize: 12.sp),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: screenHeight / 7),
                  ],
                ),
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
                        .push(const RouteConsultationSuccess());
                  },
                  title: 'Selanjutnya',
                  height: 50.h,
                ),
              ),
            )
          ],
        ));
  }
}
