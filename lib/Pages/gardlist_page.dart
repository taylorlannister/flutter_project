import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

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
    Colors.yellow
  ];

  List<Widget> buildWidget(BuildContext context) {
    var widgetList = <Widget>[];
    List iconsSet = [
      Icon(Icons.ac_unit),
      Icon(Icons.airport_shuttle),
      Icon(Icons.all_inclusive),
      Icon(Icons.beach_access),
      Icon(Icons.cake),
      Icon(Icons.free_breakfast)
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
        body: GridView(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 120,
                mainAxisSpacing: 10,
                mainAxisExtent: 190,
                crossAxisSpacing: 10),
            children: buildWidget(context)));
  }
}
