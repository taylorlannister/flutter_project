import 'package:flutter/material.dart';

class ContainWidget extends StatelessWidget {
  const ContainWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.only(top: 0, left: 120),
        constraints: const BoxConstraints.tightFor(width: 90, height: 60),
        decoration: const BoxDecoration(
          gradient: RadialGradient(
              colors: [Colors.red, Colors.orange],
              center: Alignment.center,
              radius: 98),
          boxShadow: [
            BoxShadow(
              color: Colors.yellow,
              offset: Offset(2, 2),
              blurRadius: 4,
            )
          ],
        ),
        transform: Matrix4.rotationZ(.2),
        alignment: Alignment.center,
        child:
            const Text('5.20', style: TextStyle(color: Colors.white, fontSize: 40.0)),
      ),
    );
  }
}
