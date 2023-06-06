import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ConstraintsWidget extends StatefulWidget {
  const ConstraintsWidget({super.key});

  @override
  State<ConstraintsWidget> createState() => _ConstraintsWidgetState();
}

class _ConstraintsWidgetState extends State<ConstraintsWidget> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      //测试Row对齐方式，排除Column默认居中对齐的干扰
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(" hello world "),
            Text(" I am Jack "),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(" hello world "),
            Text(" I am Jack "),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          textDirection: TextDirection.ltr,
          children: <Widget>[
            Text(" hello world "),
            Text(" I am Jack "),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          verticalDirection: VerticalDirection.up,
          children: <Widget>[
            Text(
              " hello world ",
              style: TextStyle(fontSize: 30.0),
            ),
            Text(" I am Jack "),
          ],
        ),
      ],
    );
  }
}
