import 'package:flutter/material.dart';

class GradListPage extends StatefulWidget {
  const GradListPage({super.key});

  @override
  State<GradListPage> createState() => _GradListPageState();
}

class _GradListPageState extends State<GradListPage> {
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

  List<Widget> buildWidget(BuildContext context) {
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
    return widgetList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        buildSearchTextField(),
        Expanded(
            child: GridView(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 90,
                    mainAxisSpacing: 20,
                    mainAxisExtent: 50,
                    crossAxisSpacing: 10),
                children: buildWidget(context))),
      ],
    ));
  }

  Widget buildSearchTextField() {
    return Container(
        padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: const TextField(
            decoration: InputDecoration(
                labelText: '请输入商品',
                border: InputBorder.none,
                icon: Icon(Icons.shopping_cart))));
  }
}
