import 'package:flutter/material.dart';
import 'package:flutter_project/widgets/ClipTestRoute.dart';
import 'package:flutter_project/widgets/contain_widget.dart';
import 'package:flutter_project/widgets/decorated_box.dart';
import 'package:flutter_project/widgets/padding_test_route.dart';
import 'package:flutter_project/widgets/transform_widget.dart';

class ContainerPage extends StatefulWidget {
  const ContainerPage({Key? key}) : super(key: key);

  @override
  State<ContainerPage> createState() => _ContainerPageState();
}

class _ContainerPageState extends State<ContainerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          PaddingTestRoute(),
          DecoratedBoxWidget(),
          TransformWidget(),
          ContainWidget(),
          ClipTestRoute()
        ],
      ),
    );
  }
}
