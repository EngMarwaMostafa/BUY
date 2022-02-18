import 'package:buyit/logic/controllers/cart_controller.dart';
import 'package:buyit/logic/controllers/category_controller.dart';
import 'package:buyit/logic/controllers/product_controller.dart';
import 'package:buyit/models/product_models.dart';
import 'package:buyit/utils/theme.dart';
import 'package:buyit/view/screens/ProductDetailsScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get.dart';

import '../Item1.dart';

class CardItems extends StatelessWidget {
  CardItems({Key? key}) : super(key: key);

  final controller = Get.find<ProductController>();
  final cartController = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (controller.isLoading.value) {
        return Center(
          child: CircularProgressIndicator(
            color: Get.isDarkMode ? pinkClr : mainColor,
          ),
        );
      } else {
        return Container(
          child: controller.searchList.isEmpty &&
                  controller.searchTextController.text.isNotEmpty
              ? Get.isDarkMode
                  ? Image.asset('assets/search_empty_dark.png')
                  : Image.asset('assets/search_empry_light.png')
              : Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Container(
                    height: 300,
                    child: ListView.separated(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: controller.searchList.isEmpty
                          ? controller.productList.length
                          : controller.searchList.length,
                      itemBuilder: (BuildContext context, int index) {
                        if (controller.searchList.isEmpty) {
                          return buildCardItems(
                              productImage:
                                  controller.productList[index].productImage,
                              price: controller.productList[index].price,
                              productModels: controller.productList[index],
                              productId: controller.productList[index].id,
                              productname: controller.productList[index].name,
                              onTap: () {
                             //   Get.to(() => ProductDetailsScreen(
                                  //    productModels: controller.productList[index],
                                   //    productDetailsModels: null,
                                 //   ));
                              });
                        } else {
                          return buildCardItems(
                              productImage:
                                  controller.searchList[index].productImage,
                              price: controller.searchList[index].price,
                              productModels: controller.searchList[index],
                              productId: controller.searchList[index].id,
                              productname: controller.searchList[index].name,
                              onTap: () {
                               // Get.to(() => ProductDetailsScreen(
                             //  productModels: controller.searchList[index],
                                  //  ));
                              });
                        }
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return const SizedBox(
                          width: 10,
                        );
                      },
                    ),
                  ),
                ),
        );
      }
    });
  }

  Widget buildCardItems({
    required List<ProductImage> productImage,
    required int? price,
    required Function() onTap,
    required ProductModels productModels,
    required int? productId,
    required String? productname,
  }) {
    return Item1(
      productModels: productModels,
      rate: 4,
      onTap: () {},
    );
  }
}
