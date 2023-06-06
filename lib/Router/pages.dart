import 'package:flutter_project/Pages/container_page.dart';
import 'package:flutter_project/Pages/home_page.dart';
import 'package:flutter_project/Pages/main_tabbar_page.dart';
import 'package:flutter_project/Pages/scroll_controller.dart';
import 'package:flutter_project/Pages/scroll_notificationTestRoute.dart';
import 'package:flutter_project/Pages/user_page.dart';
import 'package:flutter_project/Router/router.dart';
import 'package:get/route_manager.dart';

class Pages {
  static const String home = TaylorRouter.Home;
  static const String userCenter = TaylorRouter.UserCenter;
  static final List<GetPage> routes = [
    GetPage(name: TaylorRouter.Home, page: () => const HomePage()),
    GetPage(name: TaylorRouter.UserCenter, page: () => const UserCenterPage()),
    GetPage(name: TaylorRouter.INITIAL, page: () => const MainTabbarPage()),
    GetPage(
        name: TaylorRouter.ContainerPage, page: () => const ContainerPage()),
    GetPage(
        name: TaylorRouter.ScrollPage,
        page: () => const ScrollControllerTestRoute()),
    GetPage(
        name: TaylorRouter.NotificationPage,
        page: () => const ScrollNotificationTestRoute()),
  ];
}
