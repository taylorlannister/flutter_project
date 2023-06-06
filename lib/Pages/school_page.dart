import 'package:flutter/material.dart';
import 'package:flutter_project/Pages/scroll_controller.dart';

class SchoolPage extends StatefulWidget {
  const SchoolPage({super.key});

  @override
  State<SchoolPage> createState() => _SchoolPageState();
}

class _SchoolPageState extends State<SchoolPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: ScrollControllerTestRoute(),
      ),
    );
  }
}
