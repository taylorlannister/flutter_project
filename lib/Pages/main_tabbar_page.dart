import 'package:flutter/material.dart';
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
    return const Scaffold(body: Tabbar()
        // ImageTaskWidget(),
        );
  }
}
