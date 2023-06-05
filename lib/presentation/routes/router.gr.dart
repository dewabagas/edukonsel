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
import 'package:auto_route/auto_route.dart' as _i16;
import 'package:flutter/material.dart' as _i17;

import '../consultations/consultation_detail/page_consultation_detail.dart'
    as _i9;
import '../consultations/consultation_history/page_consultation_history.dart'
    as _i14;
import '../consultations/consultation_list/page_consultation_list.dart' as _i6;
import '../consultations/consultation_reservation/page_consultation_reservation.dart'
    as _i7;
import '../consultations/consultation_success/page_consultation_success.dart'
    as _i10;
import '../consultations/consultation_video_conference/page_consultation_video_conference.dart'
    as _i11;
import '../core/pages/page_onboarding.dart' as _i2;
import '../core/pages/page_splash.dart' as _i1;
import '../counselor_detail.dart/page_counselor_detail.dart' as _i8;
import '../dashboard/page_dashboard.dart' as _i5;
import '../login/page_login.dart' as _i3;
import '../my_account/page_my_account.dart' as _i12;
import '../profile_setting/page_profile_setting.dart' as _i15;
import '../register/page_register.dart' as _i4;
import '../transaction_history/page_transaction_history.dart' as _i13;

class AppRouter extends _i16.RootStackRouter {
  AppRouter([_i17.GlobalKey<_i17.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i16.PageFactory> pagesMap = {
    RouteSplash.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.PageSplash(),
      );
    },
    RouteOnboarding.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.PageOnboarding(),
      );
    },
    RouteLogin.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.PageLogin(),
      );
    },
    RouteRegister.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.PageRegister(),
      );
    },
    RouteDashboard.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.PageDashboard(),
      );
    },
    RouteConsultationList.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.PageConsultationList(),
      );
    },
    RouteConsultationReservation.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.PageConsultationReservation(),
      );
    },
    RouteCounselorDetail.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.PageCounselorDetail(),
      );
    },
    RouteConsultationDetail.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.PageConsultationDetail(),
      );
    },
    RouteConsultationSuccess.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i10.PageConsultationSuccess(),
      );
    },
    RouteConsultationVideoConference.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i11.PageConsultationVideoConference(),
      );
    },
    RouteMyAccount.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i12.PageMyAccount(),
      );
    },
    RouteTransactionHistory.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i13.PageTransactionHistory(),
      );
    },
    RouteConsultationHistory.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i14.PageConsultationHistory(),
      );
    },
    RouteProfileSetting.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i15.PageProfileSetting(),
      );
    },
  };

  @override
  List<_i16.RouteConfig> get routes => [
        _i16.RouteConfig(
          RouteSplash.name,
          path: '/',
        ),
        _i16.RouteConfig(
          RouteOnboarding.name,
          path: '/page-onboarding',
        ),
        _i16.RouteConfig(
          RouteLogin.name,
          path: '/page-login',
        ),
        _i16.RouteConfig(
          RouteRegister.name,
          path: '/page-register',
        ),
        _i16.RouteConfig(
          RouteDashboard.name,
          path: '/page-dashboard',
        ),
        _i16.RouteConfig(
          RouteConsultationList.name,
          path: '/page-consultation-list',
        ),
        _i16.RouteConfig(
          RouteConsultationReservation.name,
          path: '/page-consultation-reservation',
        ),
        _i16.RouteConfig(
          RouteCounselorDetail.name,
          path: '/page-counselor-detail',
        ),
        _i16.RouteConfig(
          RouteConsultationDetail.name,
          path: '/page-consultation-detail',
        ),
        _i16.RouteConfig(
          RouteConsultationSuccess.name,
          path: '/page-consultation-success',
        ),
        _i16.RouteConfig(
          RouteConsultationVideoConference.name,
          path: '/page-consultation-video-conference',
        ),
        _i16.RouteConfig(
          RouteMyAccount.name,
          path: '/page-my-account',
        ),
        _i16.RouteConfig(
          RouteTransactionHistory.name,
          path: '/page-transaction-history',
        ),
        _i16.RouteConfig(
          RouteConsultationHistory.name,
          path: '/page-consultation-history',
        ),
        _i16.RouteConfig(
          RouteProfileSetting.name,
          path: '/page-profile-setting',
        ),
      ];
}

/// generated route for
/// [_i1.PageSplash]
class RouteSplash extends _i16.PageRouteInfo<void> {
  const RouteSplash()
      : super(
          RouteSplash.name,
          path: '/',
        );

  static const String name = 'RouteSplash';
}

/// generated route for
/// [_i2.PageOnboarding]
class RouteOnboarding extends _i16.PageRouteInfo<void> {
  const RouteOnboarding()
      : super(
          RouteOnboarding.name,
          path: '/page-onboarding',
        );

  static const String name = 'RouteOnboarding';
}

/// generated route for
/// [_i3.PageLogin]
class RouteLogin extends _i16.PageRouteInfo<void> {
  const RouteLogin()
      : super(
          RouteLogin.name,
          path: '/page-login',
        );

  static const String name = 'RouteLogin';
}

/// generated route for
/// [_i4.PageRegister]
class RouteRegister extends _i16.PageRouteInfo<void> {
  const RouteRegister()
      : super(
          RouteRegister.name,
          path: '/page-register',
        );

  static const String name = 'RouteRegister';
}

/// generated route for
/// [_i5.PageDashboard]
class RouteDashboard extends _i16.PageRouteInfo<void> {
  const RouteDashboard()
      : super(
          RouteDashboard.name,
          path: '/page-dashboard',
        );

  static const String name = 'RouteDashboard';
}

/// generated route for
/// [_i6.PageConsultationList]
class RouteConsultationList extends _i16.PageRouteInfo<void> {
  const RouteConsultationList()
      : super(
          RouteConsultationList.name,
          path: '/page-consultation-list',
        );

  static const String name = 'RouteConsultationList';
}

/// generated route for
/// [_i7.PageConsultationReservation]
class RouteConsultationReservation extends _i16.PageRouteInfo<void> {
  const RouteConsultationReservation()
      : super(
          RouteConsultationReservation.name,
          path: '/page-consultation-reservation',
        );

  static const String name = 'RouteConsultationReservation';
}

/// generated route for
/// [_i8.PageCounselorDetail]
class RouteCounselorDetail extends _i16.PageRouteInfo<void> {
  const RouteCounselorDetail()
      : super(
          RouteCounselorDetail.name,
          path: '/page-counselor-detail',
        );

  static const String name = 'RouteCounselorDetail';
}

/// generated route for
/// [_i9.PageConsultationDetail]
class RouteConsultationDetail extends _i16.PageRouteInfo<void> {
  const RouteConsultationDetail()
      : super(
          RouteConsultationDetail.name,
          path: '/page-consultation-detail',
        );

  static const String name = 'RouteConsultationDetail';
}

/// generated route for
/// [_i10.PageConsultationSuccess]
class RouteConsultationSuccess extends _i16.PageRouteInfo<void> {
  const RouteConsultationSuccess()
      : super(
          RouteConsultationSuccess.name,
          path: '/page-consultation-success',
        );

  static const String name = 'RouteConsultationSuccess';
}

/// generated route for
/// [_i11.PageConsultationVideoConference]
class RouteConsultationVideoConference extends _i16.PageRouteInfo<void> {
  const RouteConsultationVideoConference()
      : super(
          RouteConsultationVideoConference.name,
          path: '/page-consultation-video-conference',
        );

  static const String name = 'RouteConsultationVideoConference';
}

/// generated route for
/// [_i12.PageMyAccount]
class RouteMyAccount extends _i16.PageRouteInfo<void> {
  const RouteMyAccount()
      : super(
          RouteMyAccount.name,
          path: '/page-my-account',
        );

  static const String name = 'RouteMyAccount';
}

/// generated route for
/// [_i13.PageTransactionHistory]
class RouteTransactionHistory extends _i16.PageRouteInfo<void> {
  const RouteTransactionHistory()
      : super(
          RouteTransactionHistory.name,
          path: '/page-transaction-history',
        );

  static const String name = 'RouteTransactionHistory';
}

/// generated route for
/// [_i14.PageConsultationHistory]
class RouteConsultationHistory extends _i16.PageRouteInfo<void> {
  const RouteConsultationHistory()
      : super(
          RouteConsultationHistory.name,
          path: '/page-consultation-history',
        );

  static const String name = 'RouteConsultationHistory';
}

/// generated route for
/// [_i15.PageProfileSetting]
class RouteProfileSetting extends _i16.PageRouteInfo<void> {
  const RouteProfileSetting()
      : super(
          RouteProfileSetting.name,
          path: '/page-profile-setting',
        );

  static const String name = 'RouteProfileSetting';
}
