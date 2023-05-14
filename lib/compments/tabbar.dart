import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/compments/image_task.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({Key? key}) : super(key: key);

  _TabbarState createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("首页"),
        ),
        // body: MyIconContainer01(Icons.search,color: Colors.black),
        body: ImageTaskWidget(),
        // 实现底部tabbar
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: this._currentIndex, // 初始化在哪个bar
          onTap: (int index) {
            setState(() {
              this._currentIndex = index;
            });
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
            BottomNavigationBarItem(
                icon: Icon(Icons.center_focus_weak), label: "我的"),
          ],
        ));
  }
}
