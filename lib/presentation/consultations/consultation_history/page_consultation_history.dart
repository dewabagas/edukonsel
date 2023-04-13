import 'dart:developer';

import 'package:edukonsel/presentation/consultations/consultation_history/components/tab_history.dart';
import 'package:edukonsel/presentation/consultations/consultation_history/tabs/tab_history_active.dart';
import 'package:edukonsel/presentation/consultations/consultation_history/tabs/tab_history_complete.dart';
import 'package:edukonsel/presentation/shared/widgets/others/expandable_page_view/expandable_page_view.dart';
import 'package:edukonsel/presentation/shared/widgets/pages/page_decoration_top.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PageConsultationHistory extends StatefulWidget {
  const PageConsultationHistory({super.key});

  @override
  State<PageConsultationHistory> createState() =>
      _PageConsultationHistoryState();
}

class _PageConsultationHistoryState extends State<PageConsultationHistory>
    with TickerProviderStateMixin {
  int selectedIndex = 0;
  late PageController pageController;

  @override
  void initState() {
    pageController = PageController(initialPage: 0);

    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageDecorationTop(
        appBarTitle: 'Riwayat Konsultasi',
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: TabHistory(
                  selectedIndex: selectedIndex,
                  onValueChanged: (i) {
                    pageController.animateToPage(
                      i,
                      duration: const Duration(milliseconds: 250),
                      curve: Curves.ease,
                    );
                    setState(() {
                      selectedIndex = i;
                    });
                  },
                ),
              ),
              ExpandablePageView(
                dragStartBehavior: DragStartBehavior.start,
                controller: pageController,
                physics:
                    PageScrollPhysics().applyTo(const ClampingScrollPhysics()),
                animateFirstPage: true,
                onPageChanged: (pageIndex) {
                  setState(() {
                    selectedIndex = pageIndex;
                  });
                },
                children: [TabHistoryActive(), TabHistoryComplete()],
              ),
            ],
          ),
        ));
  }
}
