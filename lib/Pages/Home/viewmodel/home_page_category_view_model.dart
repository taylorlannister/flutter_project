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
        HomePageGoodsModel(Icon(Icons.access_alarm_sharp), Colors.red,
            Image.asset('assets/images/shose1.jpeg'), '耐克一代', '99.9'),
        HomePageGoodsModel(Icon(Icons.qr_code_2_outlined), Colors.green,
            Image.asset('assets/images/shose2.jpeg'), '耐尔二', '12.2'),
        HomePageGoodsModel(Icon(Icons.earbuds), Colors.purple,
            Image.asset('assets/images/shose3.jpeg'), '欧文三代', '11.4'),
        HomePageGoodsModel(Icon(Icons.radar), Colors.orange,
            Image.asset('assets/images/shose4.jpeg'), '安踏', '15.6'),
        HomePageGoodsModel(Icon(Icons.vape_free), Colors.deepOrangeAccent,
            Image.asset('assets/images/shose5.jpeg'), '鸿星尔克', '1.2'),
        HomePageGoodsModel(Icon(Icons.car_crash), Colors.yellow,
            Image.asset('assets/images/shose6.jpeg'), '耐克', '354'),
        HomePageGoodsModel(Icon(Icons.ads_click_rounded), Colors.black12,
            Image.asset('assets/images/shose7.jpeg'), '詹姆士', '699'),
        HomePageGoodsModel(Icon(Icons.bubble_chart), Colors.orangeAccent,
            Image.asset('assets/images/shose8.jpeg'), '德隆', '499'),
      ];
  get modelList => [categoryList, goodsList];
}
