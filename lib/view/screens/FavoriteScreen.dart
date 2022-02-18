import 'package:buyit/logic/controllers/product_controller.dart';
import 'package:buyit/models/product_models.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';

class FavoriteScreen extends StatelessWidget {
  FavoriteScreen({Key? key}) : super(key: key);

  final controller = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      body: Obx(
        () {
          if (controller.favouritesList.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 100,
                    width: 100,
                    child: Image.asset("assets/heart.png"),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text('Please, Add your favorites products.',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Get.isDarkMode ? Colors.white : Colors.black,
                        fontSize: 18,
                      )),
                ],
              ),
            );
          } else {
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                childAspectRatio: 0.8,
                mainAxisSpacing: 9.0,
                crossAxisSpacing: 6.0,
                maxCrossAxisExtent: 200,
              ),
              itemCount: controller.favouritesList.length,
              itemBuilder: (BuildContext context, int index) {
                return buildFavItems(
                  productModels: controller.productList[index],
                  productImage: controller.favouritesList[index].productImage,
                  price: controller.productList[index].price,
                  title: controller.favouritesList[index].name,
                  productid: controller.favouritesList[index].id,
                );
              },
            );
          }
        },
      ),
    );
  }

  Widget buildFavItems({
    required List<ProductImage> productImage,
    required int? price,
    required String title,
    required int? productid,
    required ProductModels productModels,
  }) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, bottom: 5),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          //  color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 3.0,
              blurRadius: 5.0,
            ),
          ],
        ),
        height: 272,
        width: 230,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Obx(
            () => Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 10, left: 5),
                    width: 142,
                    height: 142,
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
                    child: Image.network(
                      productModels.productImage[0].image!,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    title,
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
                        onPressed: () {},
                        icon: controller.isFavourites(productid!)
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
                        onPressed: () {},
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
    );
  }
}
