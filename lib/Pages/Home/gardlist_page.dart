import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_project/Pages/Home/enum/home_page_widget_type.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GradListPage extends StatefulWidget {
  const GradListPage({super.key});

  @override
  State<GradListPage> createState() => _GradListPageState();
}

class _GradListPageState extends State<GradListPage> {
  static final categoryIconWidth = (ScreenUtil().screenWidth - 30) / 4;
  static final goodsWidth = (ScreenUtil().screenWidth - 20) / 2;

  static final widgetTypes = [
    HomepageWidgetType.category,
    HomepageWidgetType.business
  ];
  final colorSet = [
    Colors.blue,
    Colors.green,
    Colors.purple,
    Colors.orange,
    Colors.deepOrangeAccent,
    Colors.yellow,
    Colors.orangeAccent,
    Colors.greenAccent,
  ];

  Widget buildWidget(BuildContext context) {
    var widgetList = <Widget>[];
    List iconsSet = [
      const Icon(Icons.ac_unit),
      const Icon(Icons.airport_shuttle),
      const Icon(Icons.all_inclusive),
      const Icon(Icons.beach_access),
      const Icon(Icons.cake),
      const Icon(Icons.free_breakfast),
      const Icon(Icons.free_breakfast),
      const Icon(Icons.free_breakfast)
    ];

    for (var i = 0; i < iconsSet.length; i++) {
      widgetList.add(Container(
        color: colorSet[i],
        child: iconsSet[i],
      ));
    }
    return Container(
      color: Colors.blue,
      child: Icon(Icons.pinch_outlined),
    );
  }

  Widget buildGoodsWidget(BuildContext context) {
    var widgetList = <Widget>[];
    for (var i = 0; i < 12; i++) {
      widgetList.add(Container(
          color: Colors.blue, child: Icon(Icons.image_not_supported)));
    }
    return Container(
        color: Colors.blue, child: Icon(Icons.image_not_supported));
  }

  Widget buildItem() {
    return ListView.builder(
      itemCount: itemCount(HomepageWidgetType.category),
      itemBuilder: (context, index) {
        if (widgetTypes == HomepageWidgetType.category) {
          return buildWidget(context);
        } else {
          return buildGoodsWidget(context);
        }
      },
    );
  }

  Widget buildSearchTextField() {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 0, 30, 0),
      child: const TextField(
          decoration: InputDecoration(
              hintText: '请输入商品',
              icon: Icon(Icons.shopping_cart),
              iconColor: Colors.black)),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
    );
  }

  int itemCount(HomepageWidgetType type) {
    if (type == HomepageWidgetType.category) {
      return 8;
    }
    return 20;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: buildSearchTextField(),
          shadowColor: Colors.amberAccent,
        ),
        body: buildItem());
  }
}
    //   children: [
    //   Expanded(
    //       child: GridView(
    //           gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
    //               maxCrossAxisExtent: categoryIconWidth,
    //               mainAxisSpacing: 10,
    //               childAspectRatio: 1,
    //               crossAxisSpacing: 10),
    //           children: buildWidget(context))),
    //   Expanded(
    //       child: GridView(
    //           gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
    //               maxCrossAxisExtent: goodsWidth,
    //               mainAxisSpacing: 10,
    //               childAspectRatio: 1,
    //               crossAxisSpacing: 10),
    //           children: buildGoodsWidget(context))),
    // ]);
          // body: Column(
        //   children: <Widget>[
        //     Expanded(
        //         child: GridView(
        //             gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        //                 maxCrossAxisExtent: categoryIconWidth,
        //                 mainAxisSpacing: 10,
        //                 childAspectRatio: 1,
        //                 crossAxisSpacing: 10),
        //             children: buildWidget(context))),
        //     Expanded(
        //         child: GridView(
        //             gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        //                 maxCrossAxisExtent: goodsWidth,
        //                 mainAxisSpacing: 10,
        //                 childAspectRatio: 1,
        //                 crossAxisSpacing: 10),
        //             children: buildGoodsWidget(context))),
        //   ],
        // ));