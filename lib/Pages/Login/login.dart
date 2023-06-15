import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _nameController = TextEditingController();
  final _passwordController = TextEditingController();

  var agreementIsSelect = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: 400,
              width: ScreenUtil().screenWidth,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/login_bg@2x.png'),
                      fit: BoxFit.fill)),
              child: Container(
                padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/images/login_logo@2x.png'),
                )),
              ),
            ),
            buildLoginInputTextField(),
            buildLoginButton(),
            SizedBox(height: 20),
            buildRorgetButton(),
            buildaggreeBox()
          ],
        ),
      ),
    );
  }

  Widget buildLoginInputTextField() {
    return Column(
      children: [
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
        SizedBox(
          height: 20,
        ),
      ],
    );
  }

  Widget buildLoginButton() {
    return Container(
      width: ScreenUtil().screenWidth - 80,
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(colors: [
            Color.fromRGBO(143, 148, 251, .3),
            Color.fromRGBO(89, 94, 188, 0.6)
          ])),
      child: Center(
          child: Text('登录',
              style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.normal))),
    );
  }

  Widget buildRorgetButton() {
    return Container(
      width: ScreenUtil().screenWidth - 80,
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(colors: [
            Color.fromRGBO(143, 148, 251, .3),
            Color.fromRGBO(89, 94, 188, 0.6)
          ])),
      child: Center(
          child: Text('忘记密码',
              style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.normal))),
    );
  }

  Widget buildaggreeBox() {
    return Container(
        width: ScreenUtil().screenWidth,
        padding: EdgeInsets.fromLTRB(0, 15, 10, 0),
        alignment: Alignment.centerRight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Checkbox(
                value: agreementIsSelect,
                onChanged: (bool? newValue) {
                  agreementIsSelect = newValue!;
                  setState(() {});
                }),
            Text('用户协议需知'),
          ],
        ));
  }
}
