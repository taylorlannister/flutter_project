// ignore: import_of_legacy_library_into_null_safe
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/models/account.dart';

class FututeBuilderRouteWidget extends StatefulWidget {
  const FututeBuilderRouteWidget({super.key});
  @override
  State<StatefulWidget> createState() {
    return _FututeBuilderRouteState();
  }
}

class _FututeBuilderRouteState extends State<FututeBuilderRouteWidget> {
  final Dio _dio = Dio();

  @override
  void initState() {}

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        child: FutureBuilder(
            future: _dio.get("https://api.github.com/orgs/flutterchina/repos",
                options: Options(responseType: ResponseType.plain)),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                Response response = snapshot.data;

                if (snapshot.hasError) {
                  return Text(snapshot.error.toString());
                }
                aidsjas(response.data.toString());
                return ListView(
                    children: response.data
                        .map<Widget>(
                            (e) => ListTile(title: Text(e["full_name"])))
                        .toList());
              }
              return const CircularProgressIndicator();
            }));
  }

  void aidsjas(String str) {
    //一个JSON格式的用户列表字符串
    // String jsonStr = '[{"name":"Jack"},{"name":"Rose"}]';
    //将JSON字符串转为Dart对象(此处是List)
    List items = json.decode(str);
//输出第一个用户的姓名

    print(items);
  }
}
