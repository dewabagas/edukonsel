import 'package:auto_route/annotations.dart';
import 'package:edukonsel/presentation/core/pages/page_onboarding.dart';
import 'package:edukonsel/presentation/core/pages/page_splash.dart';
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
])
class $AppRouter {}
