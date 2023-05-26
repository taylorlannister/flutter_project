import 'package:flutter/material.dart';
import 'package:flutter_project/Router/router.dart';
import 'package:flutter_project/compments/stackConstraints.dart';
import 'package:get/get.dart';

import '../compments/constraints.dart';
import '../compments/flexWidget.dart';
import '../compments/flowWidget.dart';

class LayoutShowingPage extends StatefulWidget {
  const LayoutShowingPage({super.key});

  @override
  State<LayoutShowingPage> createState() => _LayoutShowingPageState();
}

class _LayoutShowingPageState extends State<LayoutShowingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const FlowWidget(),
          const ConstraintsWidget(),
          const FlexWidget(),
          const StackConstraints(),
          ElevatedButton(
              onPressed: showContainerPage, child: const Text('容器类组件')),
        ],
      ),
    );
  }

  void showContainerPage() {
    Get.toNamed(TaylorRouter.ContainerPage);
  }
}
