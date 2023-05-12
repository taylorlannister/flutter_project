import 'package:flutter/material.dart';
import 'package:flutter_project/compments/router.dart';

class ImageTaskWidget extends StatefulWidget {
  const ImageTaskWidget({super.key});
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ImageTaskState();
  }
}

class ImageTaskState extends State<ImageTaskWidget> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
          Text(
            '当前计数： $count',
            style: TextStyle(fontSize: 12.0),
          ),
          const Image(
              image: AssetImage(
                  '/Users/liuzhikang/flutter_project/.vscode/images/home_laster_enquiry_push_order.png')),
          // ElevatedButton(onPressed: , child: Text('+1'))
          ElevatedButton(onPressed: pushWithRoute, child: const Text('+1')),
          Image.network(
            "https://5b0988e595225.cdn.sohucs.com/images/20180204/53c1d7cc3e0f422c825011d1f2107ca5.jpeg",
            width: 100,
          )
        ]));
  }

  void onPress() {
    setState(() {
      count++;
    });
  }

  void pushWithRoute() {
    onPress();
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return NewRoute();
    }));
  }
}
/// 计数器
