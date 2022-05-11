import 'package:auto_route/auto_route.dart';
import 'package:custom_textfield/modules/home/home.dart';
import 'package:custom_textfield/modules/home/profile.dart';
import 'package:custom_textfield/widget/custom_login.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true, path: '/'),
    AutoRoute(
      path: '/login',
      page: EmptyRouterPage,
      name: 'LoginRouter',
      children: [
        AutoRoute(page: CustomLogin, path: ''),
        AutoRoute(page: ProfilePage, path: 'profile/:profileId'),
      ],
    ),
  ],
)
class $AppRouter {}
