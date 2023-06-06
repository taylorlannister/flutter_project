import 'package:flutter/material.dart';

class LayoutLogPrint<T> extends StatelessWidget {
  const LayoutLogPrint({Key? key, required this.child, this.tag})
      : super(key: key);

  final Widget child;

  final T? tag;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, constraints) {
      assert(() {
        print('${tag ?? key ?? child}: $constraints');
        return true;
      }());
      return child;
    });
  }
}
