import 'package:flutter/material.dart';
import 'package:flutter_project/Pages/scaffold_page.dart';
import 'package:flutter_project/compments/tabbar.dart';

class MainTabbarPage extends StatefulWidget {
  const MainTabbarPage({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _mainTabbarPage();
  }
}

class _mainTabbarPage extends State<MainTabbarPage> {
  Widget buildTwoSliverList() {
    var listView = SliverFixedExtentList(
        delegate: SliverChildBuilderDelegate(
            (context, index) => ListTile(title: Text('$index')),
            childCount: 99),
        itemExtent: 56);
    return CustomScrollView(
      slivers: <Widget>[listView, listView],
    );
  }

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   body: const ScaffoldRoute(),
    // );
    // return Scaffold();
    // return ScrollNotificationTestRoute();
    return const Scaffold(body: Tabbar());
    // ImageTaskWidget(),
    // );
  }
}
