// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    VendorActivityRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const VendorActivityScreen(),
      );
    },
    VendorCreateOrderRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const VendorCreateOrderScreen(),
      );
    },
    VendorHomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const VendorHomeScreen(),
      );
    },
    VendorSalesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const VendorSalesScreen(),
      );
    },
    VendorRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const VendorScreen(),
      );
    },
    WelcomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const WelcomeScreen(),
      );
    },
  };
}

/// generated route for
/// [VendorActivityScreen]
class VendorActivityRoute extends PageRouteInfo<void> {
  const VendorActivityRoute({List<PageRouteInfo>? children})
      : super(
          VendorActivityRoute.name,
          initialChildren: children,
        );

  static const String name = 'VendorActivityRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [VendorCreateOrderScreen]
class VendorCreateOrderRoute extends PageRouteInfo<void> {
  const VendorCreateOrderRoute({List<PageRouteInfo>? children})
      : super(
          VendorCreateOrderRoute.name,
          initialChildren: children,
        );

  static const String name = 'VendorCreateOrderRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [VendorHomeScreen]
class VendorHomeRoute extends PageRouteInfo<void> {
  const VendorHomeRoute({List<PageRouteInfo>? children})
      : super(
          VendorHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'VendorHomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [VendorSalesScreen]
class VendorSalesRoute extends PageRouteInfo<void> {
  const VendorSalesRoute({List<PageRouteInfo>? children})
      : super(
          VendorSalesRoute.name,
          initialChildren: children,
        );

  static const String name = 'VendorSalesRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [VendorScreen]
class VendorRoute extends PageRouteInfo<void> {
  const VendorRoute({List<PageRouteInfo>? children})
      : super(
          VendorRoute.name,
          initialChildren: children,
        );

  static const String name = 'VendorRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [WelcomeScreen]
class WelcomeRoute extends PageRouteInfo<void> {
  const WelcomeRoute({List<PageRouteInfo>? children})
      : super(
          WelcomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'WelcomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
