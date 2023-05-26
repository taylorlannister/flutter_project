import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_project/compments/stackConstraints.dart';

import '../compments/constraints.dart';
import '../compments/flexWidget.dart';
import '../compments/flowWidget.dart';

class ConstraintShowingPage extends StatefulWidget {
  const ConstraintShowingPage({super.key});

  @override
  State<ConstraintShowingPage> createState() => _ConstraintShowingPageState();
}

class _ConstraintShowingPageState extends State<ConstraintShowingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // const FlowWidget(),
          // const ConstraintsWidget(),
          // const FlexWidget(),
          StackConstraints()
        ],
      ),
    );
  }
}
