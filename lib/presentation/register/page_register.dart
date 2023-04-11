import 'package:auto_route/auto_route.dart';
import 'package:edukonsel/presentation/core/constants/assets.dart';
import 'package:edukonsel/presentation/core/constants/styles.dart';
import 'package:edukonsel/presentation/core/styles/app_colors.dart';
import 'package:edukonsel/presentation/routes/router.gr.dart';
import 'package:edukonsel/presentation/shared/widgets/buttons/button_gradient.dart';
import 'package:edukonsel/presentation/shared/widgets/inputs/input_primary.dart';
import 'package:edukonsel/presentation/shared/widgets/pages/page_arc_top.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PageRegister extends StatefulWidget {
  const PageRegister({super.key});

  @override
  State<PageRegister> createState() => _PageRegisterState();
}

class _PageRegisterState extends State<PageRegister> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return PageArcTop(
        resizeToAvoidBottomInset: false,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 114.h),
                  Text('Selamat Datang!',
                      style: TextStyles.headlineLarge
                          .copyWith(color: AppColors.brokenWhite)),
                  Text(
                    'Yuk bergabung bersama EduKonsel~',
                    style: TextStyles.titleMedium
                        .copyWith(color: AppColors.brokenWhite),
                  ),
                ],
              ),
              Form(
                child: Column(
                  children: [
                    InputPrimary(label: 'Email'),
                    SizedBox(height: 10.h),
                    InputPrimary(
                        label: 'Password',
                        obscureText: obscureText,
                        suffixIcon: IconButton(
                          icon: Icon(
                            obscureText
                                ? Icons.visibility_off_outlined
                                : Icons.visibility_outlined,
                            color: AppColors.darkGrey,
                          ),
                          onPressed: () {
                            setState(() {
                              obscureText = !obscureText;
                            });
                          },
                        )),
                    InputPrimary(
                        label: 'Confirm Password',
                        obscureText: obscureText,
                        suffixIcon: IconButton(
                          icon: Icon(
                            obscureText
                                ? Icons.visibility_off_outlined
                                : Icons.visibility_outlined,
                            color: AppColors.darkGrey,
                          ),
                          onPressed: () {
                            setState(() {
                              obscureText = !obscureText;
                            });
                          },
                        )),
                    SizedBox(height: 54.h),
                    ButtonGradient(
                        title: 'Daftar', height: 50.h, onPressed: () {}),
                    SizedBox(height: 57.h),
                    Text('atau login dengan',
                        style: TextStyles.labelLarge
                            .copyWith(color: AppColors.darkGrey)),
                    SizedBox(height: 21.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          child: SvgPicture.asset(AppIcons.icGoogleRound),
                        ),
                        SizedBox(width: 30.64.w),
                        InkWell(
                          child: SvgPicture.asset(AppIcons.icFacebookRound),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  bottom: 47.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Sudah punya akun? ',
                        style: TextStyles.labelLarge
                            .copyWith(color: AppColors.darkGrey)),
                    InkWell(
                      onTap: () {
                        AutoRouter.of(context).push(const RouteLogin());
                      },
                      child: Text('Login',
                          style: TextStyles.labelLarge
                              .copyWith(decoration: TextDecoration.underline)),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
