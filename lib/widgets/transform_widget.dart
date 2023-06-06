import 'package:flutter/material.dart';

class TransformWidget extends StatelessWidget {
  const TransformWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
            padding: const EdgeInsets.all(60),
            child: Container(
              color: Colors.black,
              height: 200,
              child: Transform(
                alignment: Alignment.topRight,
                transform: Matrix4.skewY(0.3),
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  color: Colors.deepOrange,
                  child: const Text('Apartment for rent !'),
                ),
              ),
            )));
  }
}
