import 'package:flutter/material.dart';

class TaskItem extends StatefulWidget {
  final String label;
  const TaskItem({Key? key, required this.label}) : super(key: key);
  @override
  // TaskItem createState() => TaskItemState();
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TaskItemState();
  }
}

class TaskItemState extends State<TaskItem> {
  bool? _value = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            value: _value,
            onChanged: (newvalue) => setState(() {
                  _value = newvalue;
                })),
        Text(widget.label),
      ],
    );
  }
}
