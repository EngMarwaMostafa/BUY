import 'package:buyit/logic/controllers/cart_controller.dart';
import 'package:buyit/models/product_models.dart';
import 'package:buyit/utils/theme.dart';
import 'package:buyit/view/widgets/Cart/cart_product_card.dart';
import 'package:buyit/view/widgets/Cart/cart_total.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class ShoppingCartScreen extends StatelessWidget {
  ShoppingCartScreen({Key? key}) : super(key: key);

  final controller = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: const Color(0xffF5F6F8),
        appBar: AppBar(
          title: const Text(
            'Shopping Cart',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: Color(0xff515C6F),
            ),
          ),
          backgroundColor: Get.isDarkMode ? darkGreyClr : mainColor,
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                controller.clearAllProducts();
              },
              icon: const Icon(Icons.backspace),
            ),
          ],
        ),
        body: Obx(() {
          return SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 600,
                  child: ListView.separated(
                    itemBuilder: (context, index) {
                      return CartProductCard(
                        index: index,
                        //  List<ProductImage>  productImage,
                        productModels:
                        controller.productsMap.keys.toList()[index],
                        quantity:
                        controller.productsMap.values.toList()[index],
                      );
                    },
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 20,
                    ),
                    itemCount: controller.productsMap.length,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: CartTotal(),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
