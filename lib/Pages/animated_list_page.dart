import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';

class AnimatedListRoute extends StatefulWidget {
  const AnimatedListRoute({super.key});

  @override
  State<AnimatedListRoute> createState() => _AnimatedListRouteState();
}

class _AnimatedListRouteState extends State<AnimatedListRoute> {
  var data = <String>[];
  int counter = 5;
  final globalKey = GlobalKey<AnimatedListState>();

  @override
  void initState() {
    // TODO: implement initState
    for (var i = 0; i < counter; i++) {
      data.add('${i + 1}');
    }
    super.initState();
  }

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedList(
          key: globalKey,
          initialItemCount: data.length,
          itemBuilder:
              (BuildContext context, int index, Animation<double> animation) {
            return FadeTransition(
              opacity: animation,
              child: buildItem(context, index),
            );
          },
        ),
        buildAddBtn()
      ],
    );
  }

  Widget buildAddBtn() {
    return Positioned(
      child: FloatingActionButton(
          onPressed: () {
            data.add('${++counter}');
            globalKey.currentState!.insertItem(data.length - 1);
          },
          child: Icon(Icons.add)),
      bottom: 30,
      left: 0,
      right: 0,
    );
  }

  Widget buildItem(context, index) {
    String char = data[index];
    return ListTile(
      key: ValueKey(char),
      title: Text(char),
      trailing: IconButton(
        icon: Icon(Icons.delete),
        onPressed: () => onDelete(context, index),
      ),
    );
  }

  void onDelete(context, index) {
    //   待实现
    globalKey.currentState!.removeItem(index, (context, animation) {
      var item = buildItem(context, index);
      print('删除${data[index]}');
      data.remove(index);
      return FadeTransition(
        opacity: CurvedAnimation(
          parent: animation,
          curve: const Interval(0.5, 1),
        ),
        child: SizeTransition(
          sizeFactor: animation,
          axisAlignment: 0,
          child: item,
        ),
      );
    }, duration: Duration(milliseconds: 200));
  }
}
