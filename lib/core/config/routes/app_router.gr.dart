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
    ConfirmRoute.name: (routeData) {
      final args = routeData.argsAs<ConfirmRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ConfirmPage(
          key: args.key,
          code: args.code,
        ),
      );
    },
    InfoRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const InfoPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginPage(),
      );
    },
    ProfRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfScreen(),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashScreen(),
      );
    },
    UserCreateRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const UserCreateScreen(),
      );
    },
  };
}

/// generated route for
/// [ConfirmPage]
class ConfirmRoute extends PageRouteInfo<ConfirmRouteArgs> {
  ConfirmRoute({
    Key? key,
    required int code,
    List<PageRouteInfo>? children,
  }) : super(
          ConfirmRoute.name,
          args: ConfirmRouteArgs(
            key: key,
            code: code,
          ),
          initialChildren: children,
        );

  static const String name = 'ConfirmRoute';

  static const PageInfo<ConfirmRouteArgs> page =
      PageInfo<ConfirmRouteArgs>(name);
}

class ConfirmRouteArgs {
  const ConfirmRouteArgs({
    this.key,
    required this.code,
  });

  final Key? key;

  final int code;

  @override
  String toString() {
    return 'ConfirmRouteArgs{key: $key, code: $code}';
  }
}

/// generated route for
/// [InfoPage]
class InfoRoute extends PageRouteInfo<void> {
  const InfoRoute({List<PageRouteInfo>? children})
      : super(
          InfoRoute.name,
          initialChildren: children,
        );

  static const String name = 'InfoRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfScreen]
class ProfRoute extends PageRouteInfo<void> {
  const ProfRoute({List<PageRouteInfo>? children})
      : super(
          ProfRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SplashScreen]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [UserCreateScreen]
class UserCreateRoute extends PageRouteInfo<void> {
  const UserCreateRoute({List<PageRouteInfo>? children})
      : super(
          UserCreateRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserCreateRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
