import 'package:auto_route/auto_route.dart';
import 'package:lesson1/modules/authorization/presentations/screens/info_page.dart';
import 'package:lesson1/modules/authorization/presentations/screens/login_page.dart';
import 'package:lesson1/modules/spalsh_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        /// routes go here
        AutoRoute(
          page: InfoRoute.page,
        ),
        AutoRoute(
          page: SplashRoute.page,
          initial: true,
        ),
        AutoRoute(
          page: LoginRoute.page,
        )
      ];
}
