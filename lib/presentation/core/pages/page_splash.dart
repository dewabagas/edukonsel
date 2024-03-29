import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:edukonsel/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';

class PageSplash extends StatefulWidget {
  const PageSplash({super.key});

  @override
  State<PageSplash> createState() => _PageSplashState();
}

class _PageSplashState extends State<PageSplash> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1), () {
      AutoRouter.of(context).push(const RouteOnboarding());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const SizedBox();
  }
}
