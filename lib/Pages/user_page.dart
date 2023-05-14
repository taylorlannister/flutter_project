import 'package:flutter/material.dart';

class UserCenterPage extends StatefulWidget {
  const UserCenterPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _UserCenterState();
  }
}

class _UserCenterState extends State<UserCenterPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text("UserCenter"),
    );
  }
}
