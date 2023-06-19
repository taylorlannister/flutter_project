import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_project/Pages/Business/model/category_model.dart';
import 'package:flutter_project/Pages/Business/widget/bussiness_category_selected_widget.dart';
import 'package:flutter_project/Pages/Business/widget/bussiness_category_unselect_widget.dart';
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
            if (index == 0) {
              return BussinessCategorySelectedWidget(
                model: widget.list[index],
                selectCallBack: () {
                  setState(() {
                    widget.list[index].isSelected = false;
                    print(widget.list);
                  });
                },
              );
            } else {
              return BussinessCategoryUnselectWidget(model: widget.list[index]);
            }
          },
          itemCount: widget.list.length,
        ));
  }
}
