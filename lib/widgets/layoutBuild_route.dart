import 'package:flutter/cupertino.dart';
import 'package:flutter_project/widgets/responsive_column.dart';

class LayoutBuilderRoute extends StatelessWidget {
  const LayoutBuilderRoute({super.key});

  @override
  Widget build(BuildContext context) {
    var children = List.filled(6, const Text('A'));
    return Column(
      children: [
        SizedBox(width: 190, child: ResponsiveColumn(children: children)),
        ResponsiveColumn(children: children),
      ],
    );
  }
}
