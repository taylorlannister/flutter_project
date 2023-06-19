import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/Pages/Business/model/category_model.dart';

class BussinessCategorySelectedWidget extends StatefulWidget {
  const BussinessCategorySelectedWidget(
      {super.key, required this.model, required this.selectCallBack});

  final CategoryModel model;

  final VoidCallback selectCallBack;

  @override
  State<BussinessCategorySelectedWidget> createState() =>
      _BussinessCategorySelectedWidgetState();
}

class _BussinessCategorySelectedWidgetState
    extends State<BussinessCategorySelectedWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.blue)),
      child: OutlinedButton(
        child: Text(
          widget.model.type,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 10, color: Colors.blue),
        ),
        onPressed: () {
          print('123');
          widget.selectCallBack();
        },
      ),
      width: 90,
      height: 35,
    ));
  }
}
