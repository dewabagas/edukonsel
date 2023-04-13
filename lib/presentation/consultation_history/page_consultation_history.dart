import 'dart:developer';

import 'package:edukonsel/presentation/consultation_history/components/tab_history.dart';
import 'package:edukonsel/presentation/shared/widgets/pages/page_decoration_top.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PageConsultationHistory extends StatefulWidget {
  const PageConsultationHistory({super.key});

  @override
  State<PageConsultationHistory> createState() =>
      _PageConsultationHistoryState();
}

class _PageConsultationHistoryState extends State<PageConsultationHistory> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return PageDecorationTop(
        appBarTitle: 'Riwayat Konsultasi',
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30.h),
              TabHistory(
                selectedIndex: selectedIndex,
                onValueChanged: (i) {
                  setState(() {
                    selectedIndex = i;
                  });
                },
              )
            ],
          ),
        ));
  }
}
