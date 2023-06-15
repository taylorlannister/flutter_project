import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../model/home_page_category_model.dart';

class RecommendCategoryWidget extends StatefulWidget {
  const RecommendCategoryWidget(
    this.list, {
    Key? key,
  }) : super(key: key);

  @override
  State<RecommendCategoryWidget> createState() =>
      _RecommendCategoryWidgetState();

  final List<HomePageCategoryModel> list;
}

class _RecommendCategoryWidgetState extends State<RecommendCategoryWidget> {
  static final categoryIconWidth = (ScreenUtil().screenWidth - 30) / 4;

  @override
  Widget build(BuildContext context) {
    return Container(
        // color: Colors.blue,
        width: ScreenUtil().screenWidth,
        height: 180,
        child: GridView(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: categoryIconWidth,
                mainAxisSpacing: 10,
                childAspectRatio: 1,
                crossAxisSpacing: 10),
            physics: const NeverScrollableScrollPhysics(),
            children: widget.list
                .map((e) => SizedBox(
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 15),
                          Container(
                            color: e.color,
                            child: e.icon,
                          ),
                          // Text.rich(TextStyle(color: e.color), 'asda')
                          Text(style: TextStyle(color: e.color), e.content)
                        ],
                      ),
                    ))
                .toList()));
  }

  Widget buildWidget(HomePageCategoryModel context) {
    return SizedBox(
      child: Row(
        children: [
          Container(
            color: context.color,
            child: context.icon,
          )
        ],
      ),
    );
  }
}
