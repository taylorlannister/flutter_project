import 'package:flutter/widgets.dart';

class ResponsiveColumn extends StatelessWidget {
  const ResponsiveColumn({Key? key, required this.children}) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth < 200) {
        return Column(mainAxisSize: MainAxisSize.min, children: children);
      } else {
        var children = <Widget>[];
        for (var i = 0; i < children.length; i += 2) {
          if (i + 1 < children.length) {
            children.add(Row(
              mainAxisSize: MainAxisSize.min,
              children: [children[i], children[i + 1]],
            ));
          } else {
            children.add(children[i]);
          }
        }
        return Column(mainAxisSize: MainAxisSize.min, children: children);
      }
    });
  }
}
