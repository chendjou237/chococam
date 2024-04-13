import 'package:auto_route/auto_route.dart';
import 'package:chococam/auth/presentation/views/welcome_screen.dart';
import 'package:chococam/vendor/activity/presentation/views/vendor_activity_screen.dart';
import 'package:chococam/vendor/home/presentation/views/vendor_create_order.dart';
import 'package:chococam/vendor/home/presentation/views/vendor_home_screen.dart';
import 'package:chococam/vendor/presentation/vendor_screen.dart';
import 'package:chococam/vendor/profile/presentation/views/vendor_profile_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        /// routes go here
        AutoRoute(page: WelcomeRoute.page, path: '/'),
        AutoRoute(page: VendorRoute.page, path: '/vendor', children: [
          AutoRoute(page: VendorHomeRoute.page, path: 'home'),
          AutoRoute(page: VendorActivityRoute.page, path: 'activity'),
          AutoRoute(page: VendorProfileRoute.page, path: 'profile')
        ],),
        AutoRoute(page: VendorCreateOrderRoute.page, path: '/create-order')
      //  AutoRoute(page: VendorHome)
      ];
}
