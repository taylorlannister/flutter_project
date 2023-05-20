import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/Pages/home_page.dart';
import 'package:flutter_project/Pages/user_page.dart';

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
                  label: '用户中心', icon: Icon(Icons.all_inbox)),
            ],
          ),
          tabBuilder: (context, index) {
            if (index == 0) {
              return const HomePage();
            } else {
              return const UserCenterPage();
            }
          },
        )
      ],
    );
  }
}



  // Widget build(BuildContext context) {
  //   return Scaffold(
  //       appBar: AppBar(
  //         title: const Text("首页"),
  //       ),
  //       // body: MyIconContainer01(Icons.search,color: Colors.black),
  //       body: const ImageTaskWidget(),
  //       // 实现底部tabbar
  //       bottomNavigationBar: BottomNavigationBar(
  //         currentIndex: _currentIndex, // 初始化在哪个bar
  //         onTap: (int index) {
  //           setState(() {
  //             _currentIndex = index;
  //           });
  //         },
  //         items: const <BottomNavigationBarItem>[
  //           BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
  //           BottomNavigationBarItem(
  //               icon: Icon(Icons.center_focus_weak), label: "我的"),
  //         ],
  //       ));
  // }