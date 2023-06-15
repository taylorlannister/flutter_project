import 'package:flutter/material.dart';
import 'package:flutter_project/Pages/Home/model/home_page_category_model.dart';
import 'package:flutter_project/Pages/Home/model/home_page_goods_model.dart';

class HomePageCategoryViewModel {
  List<HomePageCategoryModel> get categoryList => [
        HomePageCategoryModel(Icon(Icons.disc_full_sharp), Colors.red, '超市'),
        HomePageCategoryModel(
            Icon(Icons.ads_click_rounded), Colors.green, '国际'),
        HomePageCategoryModel(Icon(Icons.safety_check), Colors.purple, '逛3D'),
        HomePageCategoryModel(Icon(Icons.vaccines), Colors.orange, '猫享'),
        HomePageCategoryModel(
            Icon(Icons.ads_click_rounded), Colors.deepOrangeAccent, '直播'),
        HomePageCategoryModel(Icon(Icons.sd_card), Colors.yellow, '猫猫币'),
        HomePageCategoryModel(Icon(Icons.vaccines_sharp), Colors.black12, '充值'),
        HomePageCategoryModel(
            Icon(Icons.access_alarm_outlined), Colors.orangeAccent, '花园'),
      ];

  List<HomePageGoodsModel> get goodsList => [
        HomePageGoodsModel(
            Icon(Icons.access_alarm_sharp),
            Colors.red,
            Image.asset(
                '/Users/liuzhikang/flutter_project/.vscode/images/home_laster_enquiry_push_order.png'),
            '物美价廉的小商品',
            '1234'),
        HomePageGoodsModel(
            Icon(Icons.qr_code_2_outlined),
            Colors.green,
            Image.asset(
                    '/Users/liuzhikang/flutter_project/.vscode/images/home_laster_enquiry_push_order.png')
                as Image,
            '物美价廉的小商品',
            '1234'),
        HomePageGoodsModel(
            Icon(Icons.earbuds),
            Colors.purple,
            Image.asset(
                '/Users/liuzhikang/flutter_project/.vscode/images/home_laster_enquiry_push_order.png'),
            '物美价廉的小商品',
            '1234'),
        HomePageGoodsModel(
            Icon(Icons.radar),
            Colors.orange,
            Image.asset(
                '/Users/liuzhikang/flutter_project/.vscode/images/home_laster_enquiry_push_order.png'),
            '物美价廉的小商品',
            '1234'),
        HomePageGoodsModel(
            Icon(Icons.vape_free),
            Colors.deepOrangeAccent,
            Image.asset(
                '/Users/liuzhikang/flutter_project/.vscode/images/home_laster_enquiry_push_order.png'),
            '物美价廉的小商品',
            '1234'),
        HomePageGoodsModel(
            Icon(Icons.car_crash),
            Colors.yellow,
            Image.asset(
                '/Users/liuzhikang/flutter_project/.vscode/images/home_laster_enquiry_push_order.png'),
            '物美价廉的小商品',
            '1234'),
        HomePageGoodsModel(
            Icon(Icons.ads_click_rounded),
            Colors.black12,
            Image.asset(
                '/Users/liuzhikang/flutter_project/.vscode/images/home_laster_enquiry_push_order.png'),
            '物美价廉的小商品',
            '1234'),
        HomePageGoodsModel(
            Icon(Icons.bubble_chart),
            Colors.orangeAccent,
            Image.asset(
                '/Users/liuzhikang/flutter_project/.vscode/images/home_laster_enquiry_push_order.png'),
            '物美价廉的小商品',
            '1234'),
        HomePageGoodsModel(
            Icon(Icons.bubble_chart),
            Colors.orangeAccent,
            Image.asset(
                '/Users/liuzhikang/flutter_project/.vscode/images/home_laster_enquiry_push_order.png'),
            '物美价廉的小商品',
            '1234'),
        HomePageGoodsModel(
            Icon(Icons.bubble_chart),
            Colors.orangeAccent,
            Image.asset(
                '/Users/liuzhikang/flutter_project/.vscode/images/home_laster_enquiry_push_order.png'),
            '物美价廉的小商品',
            '1234')
      ];
  get modelList => [categoryList, goodsList];
}
