import 'package:edukonsel/presentation/core/constants/assets.dart';
import 'package:edukonsel/presentation/core/constants/styles.dart';
import 'package:edukonsel/presentation/core/styles/app_colors.dart';
import 'package:edukonsel/presentation/shared/widgets/images/image_circle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CardReview extends StatefulWidget {
  const CardReview(
      {Key? key, this.name, this.review, this.image, this.age, this.onTap})
      : super(key: key);
  final String? image, name, age, review;
  final Function? onTap;

  @override
  _CardReviewState createState() => _CardReviewState();
}

class _CardReviewState extends State<CardReview> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap as void Function()?,
      child: Container(
        margin: EdgeInsets.only(left: 0.w, right: 0.w, bottom: 20.h),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 0.h),
                  child: ImageCircle(
                    width: 33.w,
                    height: 33.w,
                    image: widget.image,
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Padding(
                    padding: EdgeInsets.only(left: 14.w, right: 12.w),
                    child: Text(
                      '${widget.name!}, ${widget.age}',
                      style: TextStyles.bodySmall
                          .copyWith(fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                Row(
                  children: List.generate(5, (index) {
                    return Container(
                      margin: EdgeInsets.only(right: 2.w),
                      child: Center(
                        child: SvgPicture.asset(
                          AppIcons.icStar,
                          height: 11.w,
                          width: 11.w,
                        ),
                      ),
                    );
                  }),
                ),
              ],
            ),
            Padding(
                padding: EdgeInsets.only(top: 15.h),
                child:
                    Text('${widget.review}', style: TextStyles.bodyVerySmall)),
          ],
        ),
      ),
    );
  }
}
