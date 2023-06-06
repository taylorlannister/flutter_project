import 'package:flutter/material.dart';

class StackConstraints extends StatefulWidget {
  const StackConstraints({super.key});

  @override
  State<StackConstraints> createState() => _StackConstraintsState();
}

class _StackConstraintsState extends State<StackConstraints> {
  @override
  Widget build(BuildContext context) {
    var yellowBox = Container(color: Colors.yellow, height: 100, width: 100);
    var redBox = Container(color: Colors.red, height: 90, width: 90);
    var greenBox = Container(
        color: Colors.green, height: 80, width: 80, child: const Text('Stack'));
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[yellowBox, redBox, greenBox],
    );
  }
}
