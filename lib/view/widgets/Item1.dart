import 'package:buyit/logic/controllers/cart_controller.dart';
import 'package:buyit/logic/controllers/product_controller.dart';
import 'package:buyit/models/product_models.dart';
import 'package:buyit/routes/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class Item1 extends StatelessWidget {
  Item1({Key? key, required this.productModels, required this.rate,required this.onTap})
      : super(key: key);

  final controller = Get.find<ProductController>();
  final cartController = Get.find<CartController>();
  Function() onTap;

  final ProductModels productModels;
  final int? rate;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 8,
        child: Container(
          width: 220,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    top: 10,
                  ),
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.network(
                    productModels.productImage[0].image!,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(productModels.name),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.amber[700],
                    ),
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
                      '${productModels.price!.round()}',
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
                      onPressed: () {
                        Get.toNamed(Routes.favoriteScreen);
                      },
                      //  icon: controller.isFavourites(productId)
                      //   ? const Icon(
                      //     Icons.favorite,
                      //     color: Colors.red,
                      //  )
                      icon: const Icon(
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
    );
  }
}
