import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_project/Pages/Business/model/goods_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryGoodsWidget extends StatefulWidget {
  const CategoryGoodsWidget({super.key, required this.goodsList});

  final List<GoodsModel> goodsList;

  @override
  State<CategoryGoodsWidget> createState() => _CategoryGoodsWidgetState();
}

class _CategoryGoodsWidgetState extends State<CategoryGoodsWidget> {
  static final contentWidth = (ScreenUtil().screenWidth - 100) / 2;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: contentWidth,
        height: ScreenUtil().screenHeight * 3,
        child: GridView(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: contentWidth,
                mainAxisSpacing: 10,
                childAspectRatio: 0.65,
                crossAxisSpacing: 10),
            physics: NeverScrollableScrollPhysics(),
            children: widget.goodsList
                .map((e) => SizedBox(
                      child: Column(
                        children: <Widget>[
                          Container(decoration: BoxDecoration()),
                          SizedBox(height: 15),
                          e.goods,
                          Text('售价: ¥${e.content}'),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Text(
                                    style: TextStyle(color: e.color),
                                    e.content),
                                SizedBox(
                                  width: 15,
                                ),
                                buildBuyWidget(),
                              ],
                            ),
                          )
                        ],
                      ),
                    ))
                .toList()));
  }

  Widget buildBuyWidget() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
          color: Colors.white,
          image:
              DecorationImage(image: AssetImage('assets/images/gouwuche.png'))),
    );
  }
}
