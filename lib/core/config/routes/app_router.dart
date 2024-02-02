import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:lesson1/modules/authorization/presentations/screens/info_page.dart';
import 'package:lesson1/modules/authorization/presentations/screens/login_page.dart';
import 'package:lesson1/modules/authorization/presentations/screens/user_create.dart';
import 'package:lesson1/modules/spalsh_screen.dart';

import '../../../modules/authorization/presentations/screens/confirm_page.dart';

import '../../../modules/home_page/feature/profile_page/presentations/screens/prof_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        /// routes go here
        AutoRoute(
          page: InfoRoute.page,
        ),
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(
          page: LoginRoute.page,
        ),
        AutoRoute(
          page: ConfirmRoute.page,
        ),
        AutoRoute(
          page: UserCreateRoute.page,
        ),
        AutoRoute(
          page: ProfRoute.page,
        )
      ];
}
