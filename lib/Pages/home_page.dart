import 'package:flutter/material.dart';
import 'package:flutter_project/compments/image_task.dart';
import 'package:flutter_project/compments/network.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ImageTaskWidget(),
    );
  }
}
