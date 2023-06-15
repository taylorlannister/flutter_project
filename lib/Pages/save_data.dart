import 'package:flutter/material.dart';
import 'package:flutter_project/Pages/event_bus.dart';
import 'package:flutter_project/widgets/notification_route.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SaveDataPage extends StatefulWidget {
  const SaveDataPage({super.key});

  @override
  State<SaveDataPage> createState() => _SaveDataPageState();
}

class _SaveDataPageState extends State<SaveDataPage> {
  Future<SharedPreferences> per = SharedPreferences.getInstance();
  final _nameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // const NotificationRoute(),
          buildLoginInputTextField(),
          ElevatedButton(onPressed: saveData, child: const Text('登录保存输入数据')),
          ElevatedButton(
              onPressed: () => {showData(context)},
              child: const Text(' 显示保存的数据  '))
        ],
      ),
    );
  }

  Future<void> saveData() async {
    final prefs = await SharedPreferences.getInstance();
    // prefs.setString('key', 'saveValue112');
    prefs.setString('UserName', _nameController.text);
    prefs.setString('Password', _passwordController.text);
    eventBus.fire(EventFn({'UserName': 'b', 'Password': 'e'}));
  }

  Future<void> showData(BuildContext context) async {
    final per = await SharedPreferences.getInstance();
    print(per.getString('UserName'));
    print(per.getString('Password'));
    showToast(
        context: context,
        '输入账是: ${per.getString('UserName')}, \n  输入密码是: ${per.getString('Password')}');
  }

  Widget buildLoginInputTextField() {
    return Column(
      children: [
        Image.asset(
            '/Users/liuzhikang/flutter_project/.vscode/images/home_laster_enquiry_push_order.png'),
        TextField(
          controller: _nameController,
          autofocus: true,
          decoration: InputDecoration(
              labelText: '用户名',
              hintText: '用户名或邮箱',
              prefixIcon: Icon(Icons.person)),
        ),
        TextField(
          controller: _passwordController,
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
