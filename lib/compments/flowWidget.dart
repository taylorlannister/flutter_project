import 'package:flutter/material.dart';
import 'package:flutter_project/widgets/layout_log_print.dart';

class FlowWidget extends StatefulWidget {
  const FlowWidget({super.key});

  @override
  State<FlowWidget> createState() => _FlowWidgetState();
}

class _FlowWidgetState extends State<FlowWidget> {
  @override
  Widget build(BuildContext context) {
    return const Wrap(
      spacing: 8.0, // 主轴(水平)方向间距
      runSpacing: 4.0, // 纵轴（垂直）方向间距
      alignment: WrapAlignment.center, //沿主轴方向居中
      children: <Widget>[
        Chip(
          avatar: CircleAvatar(
              backgroundColor: Color.fromARGB(255, 35, 127, 202),
              child: Text('A')),
          label: Text('Hamilton'),
        ),
        Chip(
          avatar: CircleAvatar(backgroundColor: Colors.blue, child: Text('M')),
          label: Text('Lafayette'),
        ),
        Chip(
          avatar: CircleAvatar(backgroundColor: Colors.blue, child: Text('H')),
          label: Text('Mulligan'),
        ),
        Chip(
          avatar: CircleAvatar(backgroundColor: Colors.blue, child: Text('J')),
          label: Text('Laurens'),
        ),
      ],
    );
    const LayoutLogPrint(child: Text('Laurens'));
  }
}
