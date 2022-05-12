import 'package:auto_route/auto_route.dart';
import 'package:custom_textfield/modules/home/home.dart';
import 'package:custom_textfield/modules/home/profile.dart';
import 'package:custom_textfield/widget/custom_login.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    CustomRoute(page: HomePage, initial: true, path: '/'),
    CustomRoute(
      path: '/login',
      page: EmptyRouterPage,
      name: 'LoginRouter',
      children: [
        CustomRoute(
          page: CustomLogin,
          path: '',
          transitionsBuilder: TransitionsBuilders.noTransition,
        ),
        CustomRoute(
          page: ProfilePage,
          path: 'profile',
          transitionsBuilder: TransitionsBuilders.slideBottom,
        ),
      ],
    ),
  ],
)
class $AppRouter {}
