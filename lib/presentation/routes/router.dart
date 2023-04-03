import 'package:auto_route/annotations.dart';
import 'package:edukonsel/presentation/core/pages/page_onboarding.dart';
import 'package:edukonsel/presentation/core/pages/page_splash.dart';
import 'package:edukonsel/presentation/login/page_login.dart';

@MaterialAutoRouter(replaceInRouteName: "Page,Route", routes: <AutoRoute>[
  //CORE
  AutoRoute(page: PageSplash, initial: true),
  AutoRoute(page: PageOnboarding),
  AutoRoute(page: PageLogin),
])
class $AppRouter {}
