import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/Pages/constraint_page.dart';
import 'package:flutter_project/Pages/home_page.dart';
import 'package:flutter_project/Pages/save_data.dart';
import 'package:flutter_project/Pages/user_page.dart';
import 'package:flutter_project/compments/stackConstraints.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({Key? key}) : super(key: key);

  _TabbarState createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
            onTap: (int selectIndex) {
              if (mounted) {
                setState(() {
                  _currentIndex = selectIndex;
                });
              }
            },
            items: const [
              BottomNavigationBarItem(label: '首页', icon: Icon(Icons.wallet)),
              BottomNavigationBarItem(
                  label: '用户中心', icon: Icon(Icons.abc_sharp)),
              BottomNavigationBarItem(
                  label: '数据持久化', icon: Icon(Icons.ac_unit)),
              BottomNavigationBarItem(label: '各种布局', icon: Icon(Icons.folder))
            ],
          ),
          tabBuilder: (context, index) {
            if (index == 0) {
              return const HomePage();
            } else if (index == 1) {
              return const UserCenterPage();
            } else if (index == 2) {
              return const SaveDataPage();
            } else {
              return const ConstraintShowingPage();
            }
          },
        )
      ],
    );
  }
}
