import 'package:flutter/material.dart';
import 'package:flutter_project/compments/network.dart';

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
    return const Scaffold(body: FututeBuilderRouteWidget());
  }
}
