import 'package:flutter/material.dart';
import 'package:flutter_project/Pages/Home/enum/home_page_widget_type.dart';
import 'package:flutter_project/Pages/Home/viewmodel/home_page_category_view_model.dart';
import 'package:flutter_project/Pages/Home/widget/goods_widget.dart';
import 'package:flutter_project/Pages/Home/widget/recommend_category.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GradListPage extends StatefulWidget {
  const GradListPage({super.key});

  @override
  State<GradListPage> createState() => _GradListPageState();
}

class _GradListPageState extends State<GradListPage> {
  static final categoryIconWidth = (ScreenUtil().screenWidth - 30) / 4;
  static final goodsWidth = (ScreenUtil().screenWidth - 20) / 2;
  HomePageCategoryViewModel viewModel = HomePageCategoryViewModel();

  Widget buildGoodsWidget(BuildContext context) {
    var widgetList = <Widget>[];
    for (var i = 0; i < 12; i++) {
      widgetList.add(Container(
          color: Colors.blue, child: Icon(Icons.image_not_supported)));
    }
    return Container(
        color: Colors.blue, child: Icon(Icons.image_not_supported));
  }

  Widget buildItem() {
    return ListView.builder(
      itemCount: viewModel.modelList.length,
      itemBuilder: (context, index) {
        if (index == 0) {
          return RecommendCategoryWidget(viewModel.categoryList);
        } else {
          return GoodsWidget(list: viewModel.goodsList);
        }
      },
    );
  }

  Widget buildSearchTextField() {
    return Container(
      padding: const EdgeInsets.fromLTRB(15, 0, 10, 0),
      child: const TextField(
          decoration: InputDecoration(
              hintText: '请输入商品',
              icon: Icon(Icons.shopping_cart),
              iconColor: Colors.black)),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
    );
  }

  int itemCount(HomepageWidgetType type) {
    if (type == HomepageWidgetType.category) {
      return 8;
    }
    return 20;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: buildSearchTextField(),
          shadowColor: Colors.amberAccent,
          actions: <Widget>[
            IconButton(
                icon: const Icon(Icons.message_rounded), onPressed: () {})
          ],
        ),
        body: buildItem());
  }
}
