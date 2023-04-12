import 'package:edukonsel/presentation/core/constants/assets.dart';
import 'package:edukonsel/presentation/core/styles/app_colors.dart';
import 'package:edukonsel/presentation/dashboard/tabs/tab_home_patient.dart';
import 'package:edukonsel/presentation/dashboard/tabs/tab_profile.dart';
import 'package:edukonsel/presentation/dashboard/tabs/tab_tips.dart';
import 'package:edukonsel/presentation/shared/widgets/others/icon_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class PageDashboard extends StatefulWidget {
  const PageDashboard({super.key});

  @override
  State<PageDashboard> createState() => _PageDashboardState();
}

class _PageDashboardState extends State<PageDashboard> {
  int _currentIndex = 0;

  final List<IconBottomNavBarItem> items = [
    IconBottomNavBarItem(
        iconActive: BottomNavBar.icHome,
        iconInactive: BottomNavBar.icHomeGrey,
        label: 'Home'),
    IconBottomNavBarItem(
        iconActive: BottomNavBar.icTips,
        iconInactive: BottomNavBar.icTipsGrey,
        label: 'Tips'),
    IconBottomNavBarItem(
        iconActive: BottomNavBar.icConsultation,
        iconInactive: BottomNavBar.icConsultationGrey,
        label: 'Consultation'),
    IconBottomNavBarItem(
        iconActive: BottomNavBar.icProfile,
        iconInactive: BottomNavBar.icProfileGrey,
        label: 'Profile'),
  ];

  static final List widgetOptions = [
    const TabHomePatient(),
    const TabTips(),
    const TabHomePatient(),
    const TabProfile(),
  ];

  void _onItemTapped(int? index) {
    setState(() {
      _currentIndex = index!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: widgetOptions.elementAt(_currentIndex),
        bottomNavigationBar: IconBottomAppNavBar(
          backgroundColor: AppColors.white,
          notchedShape: const CircularNotchedRectangle(),
          onTabSelected: _onItemTapped,
          initialPage: _currentIndex,
          items: items,
        ));
  }
}
