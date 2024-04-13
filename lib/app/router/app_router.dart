import 'package:auto_route/auto_route.dart';
import 'package:chococam/auth/presentation/views/welcome_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        /// routes go here
        AutoRoute(page: WelcomeRoute.page, path: '/'),
      ];
}
