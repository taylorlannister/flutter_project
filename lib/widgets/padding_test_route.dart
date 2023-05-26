import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';

class PaddingTestRoute extends StatelessWidget {
  const PaddingTestRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: const <Widget>[
            Padding(
                padding: EdgeInsets.only(left: 8, top: 100),
                child: Text('hello world')),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Text('I am jack')),
            Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
                child: Text('Your friend'))
          ]),
    );
  }
}
