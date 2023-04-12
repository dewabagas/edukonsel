import 'package:auto_route/annotations.dart';
import 'package:edukonsel/presentation/consultation_list/page_consultation_list.dart';
import 'package:edukonsel/presentation/consultation_reservation/page_consultation_reservation.dart';
import 'package:edukonsel/presentation/core/pages/page_onboarding.dart';
import 'package:edukonsel/presentation/core/pages/page_splash.dart';
import 'package:edukonsel/presentation/counselor_detail.dart/page_counselor_detail.dart';
import 'package:edukonsel/presentation/dashboard/page_dashboard.dart';
import 'package:edukonsel/presentation/login/page_login.dart';
import 'package:edukonsel/presentation/register/page_register.dart';

@MaterialAutoRouter(replaceInRouteName: "Page,Route", routes: <AutoRoute>[
  // CORE
  AutoRoute(page: PageSplash, initial: true),
  AutoRoute(page: PageOnboarding),
  // AUTH
  AutoRoute(page: PageLogin),
  AutoRoute(page: PageRegister),
  // DASHBOARD
  AutoRoute(page: PageDashboard),

  // CONSULTATION
  AutoRoute(page: PageConsultationList),
  AutoRoute(page: PageConsultationReservation),
  AutoRoute(page: PageCounselorDetail),
])
class $AppRouter {}
