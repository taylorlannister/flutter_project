import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_project/Pages/Business/model/category_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryWidget extends StatefulWidget {
  const CategoryWidget({super.key, required this.list});

  final List<CategoryModel> list;
  @override
  State<CategoryWidget> createState() => _CategoryWidgeState();
}

class _CategoryWidgeState extends State<CategoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 80,
        height: ScreenUtil().screenHeight,
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return Container(
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black12)),
              alignment: Alignment.center,
              child: Text(
                widget.list[index].type,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 10),
              ),
            );
          },
          itemCount: widget.list.length,
        ));
  }
}
