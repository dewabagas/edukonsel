import 'package:edukonsel/presentation/core/constants/styles.dart';
import 'package:edukonsel/presentation/core/styles/app_colors.dart';
import 'package:edukonsel/presentation/shared/widgets/shapes/curved_bottom_clipper.dart';
import 'package:edukonsel/presentation/shared/widgets/shapes/curved_top_clipper.dart';
import 'package:flutter/material.dart';

class PageArcTop extends StatelessWidget {
  final Widget child;
  final bool? resizeToAvoidBottomInset;
  final List<Widget>? persistentFooterButtons;
  PageArcTop(
      {super.key,
      required this.child,
      this.resizeToAvoidBottomInset,
      this.persistentFooterButtons});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      body: Stack(
        children: [
          ClipPath(
            clipper: CurvedTopClipper(),
            child: Container(
              height: screenHeight / 2.8,
              color: AppColors.primary,
            ),
          ),
          child
        ],
      ),
      persistentFooterButtons: this.persistentFooterButtons,
    );
  }
}
