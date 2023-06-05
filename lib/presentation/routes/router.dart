import 'package:auto_route/annotations.dart';
import 'package:edukonsel/presentation/consultations/consultation_detail/page_consultation_detail.dart';
import 'package:edukonsel/presentation/consultations/consultation_history/page_consultation_history.dart';
import 'package:edukonsel/presentation/consultations/consultation_list/page_consultation_list.dart';
import 'package:edukonsel/presentation/consultations/consultation_reservation/page_consultation_reservation.dart';
import 'package:edukonsel/presentation/consultations/consultation_success/page_consultation_success.dart';
import 'package:edukonsel/presentation/consultations/consultation_video_conference/page_consultation_video_conference.dart';
import 'package:edukonsel/presentation/core/pages/page_onboarding.dart';
import 'package:edukonsel/presentation/core/pages/page_splash.dart';
import 'package:edukonsel/presentation/counselor_detail.dart/page_counselor_detail.dart';
import 'package:edukonsel/presentation/dashboard/page_dashboard.dart';
import 'package:edukonsel/presentation/login/page_login.dart';
import 'package:edukonsel/presentation/my_account/page_my_account.dart';
import 'package:edukonsel/presentation/profile_setting/page_profile_setting.dart';
import 'package:edukonsel/presentation/register/page_register.dart';
import 'package:edukonsel/presentation/transaction_history/page_transaction_history.dart';

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
  AutoRoute(page: PageConsultationDetail),
  AutoRoute(page: PageConsultationSuccess),
  AutoRoute(page: PageConsultationVideoConference),

  // PROFILE
  AutoRoute(page: PageMyAccount),
  AutoRoute(page: PageTransactionHistory),
  AutoRoute(page: PageConsultationHistory),
  AutoRoute(page: PageProfileSetting),
])
class $AppRouter {}
