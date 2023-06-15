import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_project/Pages/Business/viewmodel/bussiness_view_model.dart';
import 'package:flutter_project/Pages/Business/widget/category_goods_widget.dart';
import 'package:flutter_project/Pages/Business/widget/category_widget.dart';

import '../../Home/widget/goods_widget.dart';

class BussinessPage extends StatefulWidget {
  const BussinessPage({super.key});

  @override
  State<BussinessPage> createState() => _BussinessPageState();
}

class _BussinessPageState extends State<BussinessPage> {
  var bussinessViewModel = BussinessViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('种类'),
      ),
      body: Row(
        children: [
          CategoryWidget(list: bussinessViewModel.categoryList),
          CategoryGoodsWidget(goodsList: bussinessViewModel.goodsList),
        ],
      ),
    );
  }
}
