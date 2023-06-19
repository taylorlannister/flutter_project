import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../model/category_model.dart';

class BussinessCategoryUnselectWidget extends StatefulWidget {
  const BussinessCategoryUnselectWidget({super.key, required this.model});
  final CategoryModel model;

  @override
  State<BussinessCategoryUnselectWidget> createState() =>
      _BussinessCategoryUnselectWidgetState();
}

class _BussinessCategoryUnselectWidgetState
    extends State<BussinessCategoryUnselectWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey)),
      child: OutlinedButton(
        child: Text(
          widget.model.type,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 10, color: Colors.black),
        ),
        onPressed: () {},
      ),
      width: 90,
      height: 35,
    ));
  }
}
