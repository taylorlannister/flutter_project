import 'package:flutter/material.dart';

import 'TaskItem.dart';

class NewRoute extends StatelessWidget {
  const NewRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("New route"),
        ),
        body: const Column(
          children: [
            TaskItem(label: "label1 is a test"),
            TaskItem(label: "label2 is a test 2"),
            TaskItem(label: "label3 is a test 3"),
            TaskItem(label: "label4 is a test 4"),
            TaskItem(label: "label5 is a test 5"),
            TaskItem(label: "label6 is a test 6"),
            TaskItem(label: "label7 is a test 7"),
            TaskItem(label: "label8 is a test 8"),
          ],
        ));
  }
}
