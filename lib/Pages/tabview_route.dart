import 'package:flutter/material.dart';

class TabViewRoute1 extends StatefulWidget {
  const TabViewRoute1({super.key});

  @override
  State<TabViewRoute1> createState() => _TabViewRoute1State();
}

class _TabViewRoute1State extends State<TabViewRoute1>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  List tabs = ['新闻', '历史', '图片'];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: TabBarView(
          controller: _tabController,
          children: tabs.map((e) {
            return KeepAlive(
                keepAlive: true,
                child: Container(
                  alignment: Alignment.center,
                  child: Text(e, textScaleFactor: 5),
                ));
          }).toList(),
        ),
        appBar: AppBar(
          title: const Text("App name"),
          bottom: TabBar(
              controller: _tabController,
              tabs: tabs.map((e) => Tab(text: e)).toList()),
        ));
  }
}
