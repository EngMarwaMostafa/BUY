import 'dart:ui';

import 'package:buyit/models/product_models.dart';
import 'package:buyit/routes/routes.dart';
import 'package:buyit/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartController extends GetxController{

var productsMap = {}.obs;

void addProductsToCart(ProductModels productModels) {
 if (productsMap.containsKey(productModels)) {
  productsMap[productModels] += 1;
 // print(productsMap.value.toString());
 } else {
  productsMap[productModels] = 1;
//  print(productsMap.value.toString());
 }
 }

void removeProductsFromCart(ProductModels productModels){
 if(productsMap.containsKey(productModels) &&
  productsMap[productModels] ==1 ) {
  productsMap.removeWhere((key, value) => key == productModels);
 }else{
  productsMap[ProductModels] -= 1;
 }
}

void removeOneProduct(ProductModels productModels){
 productsMap.clear();
}


void clearAllProducts() {
 Get.defaultDialog(
  title: "Clean Products",
  titleStyle:  const TextStyle(
   fontSize: 18,
   color: Colors.black,
   fontWeight: FontWeight.bold,
  ),
  middleText: 'Are you sure you need clear products',
  middleTextStyle:  const TextStyle(
   fontSize: 18,
   color: Colors.black,
   fontWeight: FontWeight.bold,
  ),
  backgroundColor: Colors.grey,
  radius: 10,
  textCancel: " No ",
  cancelTextColor: Colors.white,
  textConfirm: " YES ",
  confirmTextColor: Colors.white,
  onCancel: () {
   Get.toNamed(Routes.ShoppingCartScreen);
  },
  onConfirm: () {
   productsMap.clear();
   Get.back();
  },
  buttonColor: Get.isDarkMode ? pinkClr : mainColor,
 );
}


get productSubTotal =>
    productsMap.entries.map((e) => e.key.price * e.value).toList();

get total => productsMap.entries
    .map((e) => e.key.price * e.value)
    .toList()
    .reduce((value, element) => value + element)
    .toStringAsFixed(2);

int quantity(){
 if(productsMap.isEmpty){
  return 0;
 }else{
  return productsMap.entries
      .map((e) => e.value)
      .toList()
      .reduce((value, element) => value + element);
 }
}
}