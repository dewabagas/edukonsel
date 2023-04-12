import 'package:edukonsel/presentation/shared/widgets/pages/page_decoration_top.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class PageCounselorDetail extends StatefulWidget {
  const PageCounselorDetail({super.key});

  @override
  State<PageCounselorDetail> createState() => _PageCounselorDetailState();
}

class _PageCounselorDetailState extends State<PageCounselorDetail> {
  @override
  Widget build(BuildContext context) {
    return PageDecorationTop(
        appBarTitle: 'Profile Psikolog', child: Container());
  }
}
