import 'package:edukonsel/presentation/core/constants/assets.dart';
import 'package:edukonsel/presentation/core/constants/styles.dart';
import 'package:edukonsel/presentation/core/styles/app_colors.dart';
import 'package:edukonsel/presentation/shared/widgets/images/image_circle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CardConsultation extends StatefulWidget {
  const CardConsultation(
      {Key? key,
      this.counselorName,
      this.startDate,
      this.type,
      this.price,
      this.imgDentist,
      this.sipp,
      this.onTap,
      this.isSelected})
      : super(key: key);
  final String? imgDentist, counselorName, sipp, startDate, price, type;
  final bool? isSelected;
  final Function? onTap;

  @override
  _CardConsultationState createState() => _CardConsultationState();
}

class _CardConsultationState extends State<CardConsultation> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap as void Function()?,
      child: Container(
        margin: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 20.h),
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 15.h),
        decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(10.r),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, 0),
                  blurRadius: 4,
                  spreadRadius: 1,
                  color: const Color(0xFF3A3A3A).withOpacity(0.25))
            ]),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 0.h),
                        child: ImageCircle(
                          width: 50.w,
                          height: 50.w,
                          image: widget.imgDentist,
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Padding(
                          padding: EdgeInsets.only(left: 14.w, right: 12.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.counselorName!,
                                style: TextStyles.bodyLarge,
                              ),
                              SizedBox(height: 2.h),
                              Text(
                                widget.sipp!,
                                style: TextStyles.bodyVerySmall
                                    .copyWith(color: AppColors.paragraphColor),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15.h),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Mulai',
                                style: TextStyles.bodySmall,
                              ),
                              SizedBox(height: 4.h),
                              Text(widget.startDate!,
                                  style: TextStyles.labelSmall
                                      .copyWith(color: AppColors.primary)),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Jasa', style: TextStyles.bodySmall),
                              SizedBox(height: 4.h),
                              Text(widget.price!,
                                  style: TextStyles.labelSmall
                                      .copyWith(color: AppColors.primary)),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.h),
                    child: Text(
                      widget.type!,
                      style: TextStyles.labelMedium
                          .copyWith(color: AppColors.paragraphColor),
                    ),
                  )
                ],
              ),
            ),
            SvgPicture.asset(AppIcons.icChevronRight)
          ],
        ),
      ),
    );
  }
}
