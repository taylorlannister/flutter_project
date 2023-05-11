import 'package:flutter/material.dart';

class SwitchAndCheckBoxTestRoute extends StatefulWidget {
  const SwitchAndCheckBoxTestRoute({super.key});
  @override
  State<StatefulWidget> createState() {
    return _SwitchAndCheckBoxTestRoute();
  }
}

class _SwitchAndCheckBoxTestRoute extends State<SwitchAndCheckBoxTestRoute> {
  bool _switchSelected = true;
  bool _checkBoxSelected = true;

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Switch(
          value: _switchSelected,
          onChanged: (value) {
            setState(() {
              _switchSelected = value;
            });
          }),
      Checkbox(
          value: _checkBoxSelected,
          activeColor: Colors.red,
          onChanged: (value) {
            setState(() {
              _checkBoxSelected = value!;
            });
          }),
    ]);
  }
}
