import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DecoratedBoxWidget extends StatelessWidget {
  const DecoratedBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DecoratedBox(
        decoration: BoxDecoration(
            gradient:
                LinearGradient(colors: [Colors.red, Colors.orange.shade700]),
            borderRadius: BorderRadius.circular(3.0),
            boxShadow: [
              BoxShadow(
                  color: Colors.black54,
                  offset: Offset(2.0, 2.0),
                  blurRadius: 4.0)
            ]),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 80, vertical: 18.0),
          child: Text(
            'Login',
            style: TextStyle(color: Colors.white),
          ),
        ),
        position: DecorationPosition.background,
      ),
    );
  }
}
