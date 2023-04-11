import 'package:edukonsel/presentation/core/constants/assets.dart';
import 'package:edukonsel/presentation/core/constants/styles.dart';
import 'package:edukonsel/presentation/core/styles/app_colors.dart';
import 'package:edukonsel/presentation/shared/widgets/shapes/curved_bottom_clipper.dart';
import 'package:edukonsel/presentation/shared/widgets/shapes/curved_top_clipper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PageArcImage extends StatelessWidget {
  final Widget child;
  final bool? resizeToAvoidBottomInset;
  final List<Widget>? persistentFooterButtons;
  final Widget? bottomNavigationBar;
  PageArcImage(
      {super.key,
      required this.child,
      this.resizeToAvoidBottomInset,
      this.persistentFooterButtons,
      this.bottomNavigationBar
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      body: Stack(
        children: [
          ClipPath(
              clipper: CurvedTopClipper(),
              child: Image.asset(
                AppImages.bgNight,
                fit: BoxFit.cover,
                // height: screenHeight / 2.3,
                height: 235.h,
              )),
          child
        ],
      ),
      persistentFooterButtons: persistentFooterButtons,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
