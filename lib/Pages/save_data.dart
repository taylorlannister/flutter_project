import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
          ElevatedButton(onPressed: saveData, child: Text('保存数据')),
          ElevatedButton(onPressed: showData, child: Text('刷新显示数据')),
        ],
      ),
    );
  }

  Future<void> saveData() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('key', 'saveValue112');
  }

  Future<void> showData() async {
    final per = await SharedPreferences.getInstance();
    print(per.getString('key'));
  }
}
