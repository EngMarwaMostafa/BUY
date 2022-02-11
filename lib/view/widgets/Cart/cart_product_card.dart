import 'package:buyit/logic/controllers/cart_controller.dart';
import 'package:buyit/models/product_models.dart';
import 'package:buyit/utils/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class CartProductCard extends StatelessWidget {
  final ProductModels productModels;

  CartProductCard({
    required this.productModels,
    Key? key, required this.index,
    required this.quantity}) : super(key: key);

  final controller = Get.find<CartController>();
 final int index;
 final int quantity;
  @override
  Widget build(BuildContext context) {
    return 
      Container(
        margin: const EdgeInsets.only(left: 3, top: 10,right: 3),
        height: 130,
        width: 100,
        decoration: BoxDecoration(
          color: Get.isDarkMode
              ? pinkClr.withOpacity(0.7)
              : mainColor.withOpacity(0.4),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10,left: 5),
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child:
              Image.network(
                productModels.productImage[0].image!,
                fit: BoxFit.fitHeight,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              flex: 15,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productModels.name,
                    style: TextStyle(
                      overflow: TextOverflow.ellipsis,
                      color: Get.isDarkMode ? Colors.white : Colors.black,
                      fontSize: 9,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    '\$${controller.productSubTotal[index].toStringAsFixed(2)}',
                    style: TextStyle(
                      overflow: TextOverflow.ellipsis,
                      color: Get.isDarkMode ? Colors.white : Colors.black,
                      fontSize: 9,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        controller.removeProductsFromCart(productModels);
                      },
                      icon: Icon(
                        Icons.remove_circle,
                        color: Get.isDarkMode ? Colors.white : Colors.black,
                      ),
                    ),
                    const Text(
                      "quantity",
                      style: TextStyle(
                        overflow: TextOverflow.ellipsis,
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        controller.addProductsToCart(productModels);
                      },
                      icon: Icon(
                        Icons.add_circle,
                        color: Get.isDarkMode ? Colors.white : Colors.black,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        controller.removeOneProduct(productModels);
                      },
                      icon: Icon(
                        Icons.delete,
                        size: 20,
                        color: Get.isDarkMode ? Colors.black : Colors.red,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      );
  }
}
