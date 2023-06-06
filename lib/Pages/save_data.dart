import 'package:flutter/material.dart';
import 'package:flutter_project/Pages/event_bus.dart';
import 'package:flutter_project/Router/router.dart';
import 'package:flutter_project/compments/constraints.dart';
import 'package:flutter_project/compments/flexWidget.dart';
import 'package:flutter_project/compments/flowWidget.dart';
import 'package:flutter_project/widgets/notification_route.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'bussiness_page.dart';

class SaveDataPage extends StatefulWidget {
  const SaveDataPage({super.key});

  @override
  State<SaveDataPage> createState() => _SaveDataPageState();
}

class _SaveDataPageState extends State<SaveDataPage> {
  Future<SharedPreferences> per = SharedPreferences.getInstance();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: saveData, child: Text('保存111数据')),
          ElevatedButton(onPressed: showData, child: Text('刷新显示数据')),
          NotificationRoute(),
          buildLoginInputTextField()
        ],
      ),
    );
  }

  Future<void> saveData() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('key', 'saveValue112');
    eventBus.fire(EventFn({'a': 'b', 'c': 'e'}));
  }

  Future<void> showData() async {
    final per = await SharedPreferences.getInstance();
    print(per.getString('key'));
  }

  Widget buildLoginInputTextField() {
    return Column(
      children: [
        TextField(
          autofocus: true,
          decoration: InputDecoration(
              labelText: '用户名',
              hintText: '用户名或邮箱',
              prefixIcon: Icon(Icons.person)),
        ),
        TextField(
          decoration: InputDecoration(
              labelText: "密码",
              hintText: "您的登录密码",
              prefixIcon: Icon(Icons.lock)),
          obscureText: true,
        ),
      ],
    );
  }
}
