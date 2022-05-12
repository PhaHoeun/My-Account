// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i5;

import '../modules/home/home.dart' as _i1;
import '../modules/home/profile.dart' as _i4;
import '../widget/custom_login.dart' as _i3;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i2.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.HomePage(),
          opaque: true,
          barrierDismissible: false);
    },
    LoginRouter.name: (routeData) {
      return _i2.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i2.EmptyRouterPage(),
          opaque: true,
          barrierDismissible: false);
    },
    CustomLogin.name: (routeData) {
      final args = routeData.argsAs<CustomLoginArgs>(
          orElse: () => const CustomLoginArgs());
      return _i2.CustomPage<dynamic>(
          routeData: routeData,
          child: _i3.CustomLogin(key: args.key),
          transitionsBuilder: _i2.TransitionsBuilders.noTransition,
          opaque: true,
          barrierDismissible: false);
    },
    ProfileRoute.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<ProfileRouteArgs>(
          orElse: () => ProfileRouteArgs(
              user: queryParams.optString('user'),
              id: queryParams.optInt('id')));
      return _i2.CustomPage<dynamic>(
          routeData: routeData,
          child: _i4.ProfilePage(key: args.key, user: args.user, id: args.id),
          transitionsBuilder: _i2.TransitionsBuilders.slideBottom,
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(HomeRoute.name, path: '/'),
        _i2.RouteConfig(LoginRouter.name, path: '/login', children: [
          _i2.RouteConfig(CustomLogin.name, path: '', parent: LoginRouter.name),
          _i2.RouteConfig(ProfileRoute.name,
              path: 'profile', parent: LoginRouter.name)
        ])
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i2.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class LoginRouter extends _i2.PageRouteInfo<void> {
  const LoginRouter({List<_i2.PageRouteInfo>? children})
      : super(LoginRouter.name, path: '/login', initialChildren: children);

  static const String name = 'LoginRouter';
}

/// generated route for
/// [_i3.CustomLogin]
class CustomLogin extends _i2.PageRouteInfo<CustomLoginArgs> {
  CustomLogin({_i5.Key? key})
      : super(CustomLogin.name, path: '', args: CustomLoginArgs(key: key));

  static const String name = 'CustomLogin';
}

class CustomLoginArgs {
  const CustomLoginArgs({this.key});

  final _i5.Key? key;

  @override
  String toString() {
    return 'CustomLoginArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.ProfilePage]
class ProfileRoute extends _i2.PageRouteInfo<ProfileRouteArgs> {
  ProfileRoute({_i5.Key? key, String? user, int? id})
      : super(ProfileRoute.name,
            path: 'profile',
            args: ProfileRouteArgs(key: key, user: user, id: id),
            rawQueryParams: {'user': user, 'id': id});

  static const String name = 'ProfileRoute';
}

class ProfileRouteArgs {
  const ProfileRouteArgs({this.key, this.user, this.id});

  final _i5.Key? key;

  final String? user;

  final int? id;

  @override
  String toString() {
    return 'ProfileRouteArgs{key: $key, user: $user, id: $id}';
  }
}
