import 'package:flutter/material.dart';
import 'package:flutter_project/Pages/scaffold_page.dart';
import 'package:flutter_project/Pages/scroll_controller.dart';
import 'package:flutter_project/Pages/scroll_notificationTestRoute.dart';
import 'package:flutter_project/compments/image_task.dart';
import 'package:flutter_project/compments/tabbar.dart';

class MainTabbarPage extends StatefulWidget {
  const MainTabbarPage({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _mainTabbarPage();
  }
}

class _mainTabbarPage extends State<MainTabbarPage> {
  @override
  Widget build(BuildContext context) {
    // return const ScaffoldRoute();
    // return ScrollNotificationTestRoute();
    return const ScaffoldRoute();
    // return const Scaffold(body: Tabbar());
    // ImageTaskWidget(),
    // );
  }
}
