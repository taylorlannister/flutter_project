import 'package:flutter/material.dart';

class NotificationRoute extends StatefulWidget {
  const NotificationRoute({super.key});

  @override
  State<NotificationRoute> createState() => _NotificationRouteState();
}

class _NotificationRouteState extends State<NotificationRoute> {
  String _msg = "";
  @override
  Widget build(BuildContext context) {
    return NotificationListener<MyNotification>(
      onNotification: (notification) {
        setState(() {
          print(notification.msg);
        });
        return false;
      },
      child: NotificationListener<MyNotification>(
          onNotification: (notification) {
            setState(() {
              _msg += "${notification.msg} ";
            });
            return true;
          },
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Builder(builder: (context) {
                  return ElevatedButton(
                      onPressed: () => MyNotification('Hi').dispatch(context),
                      child: const Text('Send Notification'));
                }),
                Text(_msg)
              ],
            ),
          )),
    );
  }
}

class MyNotification extends Notification {
  MyNotification(this.msg);
  final String msg;
}
