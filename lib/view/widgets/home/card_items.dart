import 'package:buyit/logic/controllers/cart_controller.dart';
import 'package:buyit/logic/controllers/product_controller.dart';
import 'package:buyit/models/product_models.dart';
import 'package:buyit/utils/theme.dart';
import 'package:buyit/view/screens/ProductDetailsScreen.dart';
import 'package:buyit/view/widgets/item1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get.dart';

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
           height: double.maxFinite,
            child:controller.searchList.isEmpty &&
                controller.searchTextController.text.isNotEmpty
            ? Get.isDarkMode
            ? Image.asset('assets/search_empty_dark.png')
            : Image.asset('assets/search_empry_light.png')
             : ListView.separated(
            padding: const EdgeInsets.symmetric(vertical: 2.0),
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount:controller.searchList.isEmpty
       ? controller.productList.length
       : controller.searchList.length,
              itemBuilder: (BuildContext context, int index) {
        if (controller.searchList.isEmpty) {
          return buildCardItems(
              productImage: controller.productList[index].productImage,
              price: controller.productList[index].price,
              productModels: controller.productList[index],
              productId: controller.productList[index].id,
              productname:controller.productList[index].name,
              onTap: () {
                Get.to(() =>
                    ProductDetailsScreen(
                      productModels: controller.productList[index],
                    ));
              });
        } else {
          return buildCardItems(
              productImage: controller.searchList[index].productImage,
              price: controller.searchList[index].price,
              productModels: controller.searchList[index],
              productId: controller.searchList[index].id,
              productname:controller.searchList[index].name,
              onTap: () {
                Get.to(() =>
                    ProductDetailsScreen(
                      productModels: controller.searchList[index],
                    ));
              });
        }
      }, separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                 width: 10,
                );
            },
       ),
      );
      }
      }
      );
      }
        Widget buildCardItems({
        required List<ProductImage> productImage,
        required int? price,
        required Function() onTap,
        required ProductModels productModels,
        required int? productId,
         required String? productname,
        })
    {
      return
        Padding(
        padding: const EdgeInsets.only(left: 5, bottom: 5),
        child:GestureDetector(
          onTap: onTap,
          child: Card(
            elevation: 4,
            child: Container(
              height: 250,
              decoration: BoxDecoration(
               border: Border.all(color: Colors.black,width: 2),
                borderRadius: BorderRadius.circular(15),
                //  color: Colors.white,
              ),
            // height: 272,
             // width: 180,
              child: Padding(
                padding: const EdgeInsets.all(2),
                child:
                  Card(
                    child:  Obx(
                          () =>
                          Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 10,),
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                //   color:Colors.grey,
                              ),
                            ],
                            //  color: Colors.amberAccent[400],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          //child: Image.network(productImage.first.image!, fit: BoxFit.fitHeight,),

                          child: PageView.builder(
                              itemCount: productImage.length,
                              itemBuilder: (c,index) =>
                                  Image.network(
                                   productImage[index].image!,
                                    fit: BoxFit.fitHeight,
                                  )),
                        ),
                        const SizedBox(height: 10),
                      Text(
                      productname!,
                          style: const TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.amber[700]),
                            Icon(Icons.star, color: Colors.amber[700]),
                            Icon(Icons.star, color: Colors.amber[700]),
                            Icon(Icons.star, color: Colors.amber[700]),
                            const Icon(Icons.star, color: Colors.grey),
                            const Text(
                              '(4.5)',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              '\$ $price',
                              style: const TextStyle(color: Colors.green),
                            ),
                            const SizedBox(
                              width: 7,
                            ),
                            const Text(
                              '|',
                              style: TextStyle(color: Colors.grey),
                            ),
                            const SizedBox(
                              width: 7,
                            ),
                            const Text(
                              'SAR 300',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        const Text(
                          '5% VAT',
                          style: TextStyle(color: Colors.grey, fontSize: 9),
                        ),
                        Row(
                          //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(width: 5),
                           IconButton(
                             onPressed:(){
                               controller.manageFavorites(productId!);
                             },
                              icon:controller.isFavorites(productId!)
                             ? const Icon(
                                Icons.favorite,
                              color: Colors.amber,
                            )
                            : const Icon(
                                Icons.favorite_outline,
                                color: Colors.black,
                              ),
                           ),
                            const SizedBox(width: 5),
                            IconButton(
                              onPressed: () {
                                cartController.addProductsToCart(productModels);
                              },
                              icon: const Icon(
                                Icons.shopping_cart,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                          ],
                        ),
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    }
  }
