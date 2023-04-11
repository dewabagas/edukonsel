// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../core/pages/page_onboarding.dart' as _i2;
import '../core/pages/page_splash.dart' as _i1;
import '../dashboard/page_dashboard.dart' as _i5;
import '../login/page_login.dart' as _i3;
import '../register/page_register.dart' as _i4;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    RouteSplash.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.PageSplash(),
      );
    },
    RouteOnboarding.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.PageOnboarding(),
      );
    },
    RouteLogin.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.PageLogin(),
      );
    },
    RouteRegister.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.PageRegister(),
      );
    },
    RouteDashboard.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.PageDashboard(),
      );
    },
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(
          RouteSplash.name,
          path: '/',
        ),
        _i6.RouteConfig(
          RouteOnboarding.name,
          path: '/page-onboarding',
        ),
        _i6.RouteConfig(
          RouteLogin.name,
          path: '/page-login',
        ),
        _i6.RouteConfig(
          RouteRegister.name,
          path: '/page-register',
        ),
        _i6.RouteConfig(
          RouteDashboard.name,
          path: '/page-dashboard',
        ),
      ];
}

/// generated route for
/// [_i1.PageSplash]
class RouteSplash extends _i6.PageRouteInfo<void> {
  const RouteSplash()
      : super(
          RouteSplash.name,
          path: '/',
        );

  static const String name = 'RouteSplash';
}

/// generated route for
/// [_i2.PageOnboarding]
class RouteOnboarding extends _i6.PageRouteInfo<void> {
  const RouteOnboarding()
      : super(
          RouteOnboarding.name,
          path: '/page-onboarding',
        );

  static const String name = 'RouteOnboarding';
}

/// generated route for
/// [_i3.PageLogin]
class RouteLogin extends _i6.PageRouteInfo<void> {
  const RouteLogin()
      : super(
          RouteLogin.name,
          path: '/page-login',
        );

  static const String name = 'RouteLogin';
}

/// generated route for
/// [_i4.PageRegister]
class RouteRegister extends _i6.PageRouteInfo<void> {
  const RouteRegister()
      : super(
          RouteRegister.name,
          path: '/page-register',
        );

  static const String name = 'RouteRegister';
}

/// generated route for
/// [_i5.PageDashboard]
class RouteDashboard extends _i6.PageRouteInfo<void> {
  const RouteDashboard()
      : super(
          RouteDashboard.name,
          path: '/page-dashboard',
        );

  static const String name = 'RouteDashboard';
}
