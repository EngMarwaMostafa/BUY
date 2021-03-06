
import 'package:buyit/logic/controllers/cart_controller.dart';
import 'package:buyit/logic/controllers/category_controller.dart';
import 'package:buyit/logic/controllers/product_controller.dart';
import 'package:buyit/models/CategorieyModels.dart';
import 'package:buyit/models/product_models.dart';
import 'package:buyit/utils/theme.dart';
import 'package:buyit/view/screens/ProductDetailsScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';

class CategoryItems extends StatelessWidget {

  final String categoryTitle;
  final CategoryModels categoryModels;

  CategoryItems({
    required this.categoryTitle,
    Key? key, required this.categoryModels,
  }) : super(key: key);

  final controller = Get.find<ProductController>();

  final cartController = Get.find<CartController>();

 final categoryController = Get.find<CategoryController>();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      appBar: AppBar(
        title: Text(categoryTitle),
        centerTitle: true,
        backgroundColor: Get.isDarkMode ? darkGreyClr : mainColor,
      ),
      body: Obx(() {
        if (categoryController.isLoading.value) {
          return Center(
            child: CircularProgressIndicator(
              color: Get.isDarkMode ? pinkClr : mainColor,
            ),
          );
        } else {
          return GridView.builder(
            itemCount: categoryController.dataList.length,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              childAspectRatio: 0.8,
              mainAxisSpacing: 9.0,
              crossAxisSpacing: 6.0,
              maxCrossAxisExtent: 200,
            ),
            itemBuilder: (context, index) {
              return buildCategoryItems(
                  image: categoryController.dataList.value.toList()[index].image,
                 title: categoryController.dataList.value.toList()[index].title,
                  categoryId: categoryController.dataList.value.toList()[index].id,
                  categoryModels: categoryController.dataList.value.toList()[index],
                  onTap: () {
                  //  Get.to(() => ProductDetailsScreen(
                    //  productModels: controller.productList[index],
                    //  categoryModels: categoryController.dataList.value.toList()[index],
                  //  ));
               },
              );
            },
          );
        }
      }),
    );
  }

  Widget buildCategoryItems({
    required String? image,
    required String? title,
    required int? categoryId,
    required CategoryModels? categoryModels,
    required Function() onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 3.0,
                blurRadius: 5.0,
              ),
            ],
          ),
          child: Column(
            children: [
              Obx(
                    () => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        controller.manageFavourites(categoryId!);
                      },
                      icon: controller.isFavourites(categoryId!)
                          ? const Icon(
                        Icons.favorite,
                        color: Colors.red,
                      )
                          : const Icon(
                        Icons.favorite_outline,
                        color: Colors.black,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
               //  cartController.addProductsToCart(productModels);
                      },
                      icon: const Icon(
                        Icons.shopping_cart,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 140,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.network(
                  image!,
                  fit: BoxFit.fitHeight,
                ),
              ),
           /*   Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$ $price",
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      height: 20,
                      width: 45,
                      decoration: BoxDecoration(
                        color: mainColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 3, right: 2),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextUtils(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              text: "$rate",
                              color: Colors.white,
                              underLine: TextDecoration.none,
                            ),
                            const Icon(
                              Icons.star,
                              size: 13,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),*/
            ],
          ),
        ),
      ),
    );
  }
}

