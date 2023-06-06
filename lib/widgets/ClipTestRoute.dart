import 'package:flutter/material.dart';

class ClipTestRoute extends StatelessWidget {
  const ClipTestRoute({super.key});

  @override
  Widget build(BuildContext context) {
    // Widget avatar = Image.asset('imgs/avatar.png', width: 60);
    Widget avatar = const Icon(Icons.accessibility_new_sharp);
    return Center(
      child: Column(
        children: <Widget>[
          avatar,
          ClipOval(child: avatar),
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: avatar,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                widthFactor: .5,
                child: avatar,
              ),
              const Text('你好世界', style: TextStyle(color: Colors.green))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ClipRect(
                child: Align(
                    alignment: Alignment.topLeft,
                    widthFactor: .5,
                    child: avatar),
              )
            ],
          ),
          const Text('你好世界', style: TextStyle(color: Colors.green))
        ],
      ),
    );
  }
}
