import 'package:flutter/material.dart';
import 'package:flutter_project/Pages/Business/model/category_model.dart';
import 'package:flutter_project/Pages/Business/model/goods_model.dart';

class BussinessViewModel {
  List<CategoryModel> get categoryList => [
        CategoryModel('安踏', true),
        CategoryModel('鸿星尔克', false),
        CategoryModel('耐克', false),
        CategoryModel('锐步', false),
        CategoryModel('回力', false),
        CategoryModel('所有', false),
      ];

  List<GoodsModel> get goodsList => [
        GoodsModel(Image(image: AssetImage('assets/images/shose1.jpeg')),
            Colors.black, '11.9'),
        GoodsModel(Image(image: AssetImage('assets/images/shose2.jpeg')),
            Colors.black, '99.9'),
        GoodsModel(Image(image: AssetImage('assets/images/shose3.jpeg')),
            Colors.black, '699.9'),
        GoodsModel(Image(image: AssetImage('assets/images/shose4.jpeg')),
            Colors.black, '499'),
        GoodsModel(Image(image: AssetImage('assets/images/shose5.jpeg')),
            Colors.black, '299'),
        GoodsModel(Image(image: AssetImage('assets/images/shose6.jpeg')),
            Colors.black, '111'),
        GoodsModel(Image(image: AssetImage('assets/images/shose7.jpeg')),
            Colors.black, '88'),
        GoodsModel(Image(image: AssetImage('assets/images/shose8.jpeg')),
            Colors.black, '77.9'),
        GoodsModel(Image(image: AssetImage('assets/images/shose1.jpeg')),
            Colors.black, '59.9'),
        GoodsModel(Image(image: AssetImage('assets/images/shose2.jpeg')),
            Colors.black, '1089.9'),
        GoodsModel(Image(image: AssetImage('assets/images/shose3.jpeg')),
            Colors.black, '0.9'),
        GoodsModel(Image(image: AssetImage('assets/images/shose6.jpeg')),
            Colors.black, '11.9'),
        GoodsModel(Image(image: AssetImage('assets/images/shose7.jpeg')),
            Colors.black, '22.9'),
        GoodsModel(Image(image: AssetImage('assets/images/shose8.jpeg')),
            Colors.black, '334.9'),
        GoodsModel(Image(image: AssetImage('assets/images/shose3.jpeg')),
            Colors.black, '11.9'),
      ];

  get modelList => [categoryList, goodsList];
}
