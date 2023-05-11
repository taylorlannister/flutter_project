import 'package:flutter/material.dart';

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
          ElevatedButton(onPressed: onPress, child: const Text('+1')),
          Image.network(
            "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4",
            width: 100,
          )
        ]));
  }

  void onPress() {
    setState(() {
      count++;
    });
  }
}
