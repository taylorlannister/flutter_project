import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_project/Pages/Home/model/home_page_goods_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GoodsWidget extends StatefulWidget {
  const GoodsWidget({super.key, required this.list});

  @override
  State<GoodsWidget> createState() => _GoodsWidgetState();

  final List<HomePageGoodsModel> list;
}

class _GoodsWidgetState extends State<GoodsWidget> {
  static final categoryIconWidth = (ScreenUtil().screenWidth - 30) / 2;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: ScreenUtil().screenWidth,
        height: ScreenUtil().screenHeight,
        child: GridView(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: categoryIconWidth,
                mainAxisSpacing: 10,
                childAspectRatio: 0.62,
                crossAxisSpacing: 10),
            physics: NeverScrollableScrollPhysics(),
            children: widget.list
                .map((e) => SizedBox(
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 15),
                          e.image,
                          // Text(
                          // style: TextStyle(color: Colors.orange),
                          // e.content),
                          Text('售价: ¥${e.price}'),
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
                                SizedBox(
                                  width: 10,
                                )
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

  buyAnimation() {}
}
