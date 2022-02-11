import 'package:buyit/logic/controllers/product_controller.dart';
import 'package:buyit/view/screens/ProductDetailsScreen.dart';
import 'package:buyit/view/widgets/Item1.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProductController());
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: const Color(0xffEFEFEF),
              height: 60,
              child: Container(
                margin: const EdgeInsets.only(
                    top: 7, left: 15, right: 14, bottom: 7),
                decoration: BoxDecoration(
                  color: Get.isDarkMode ? darkGreyClr : mainColor,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: TextField(
                  onChanged: (v) {
                    controller.onFilter(v);
                  },
                  decoration: InputDecoration(
                    hintText: "Search Something",
                    prefixIcon: const ImageIcon(
                      AssetImage('assets/icons/search.png'),
                    ),
                    hintStyle: TextStyle(
                        color: const Color(0xff515C6F).withOpacity(0.4),
                        fontSize: 15),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8, top: 8),
              child: Row(
                children: [
                  Text(
                    'National Day Products',
                    style: TextStyle(
                        color: Get.isDarkMode ? Colors.white : Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),

              Obx(() => controller.productList.isEmpty
                  ? const Center(
                      child: CircularProgressIndicator(
                      color: Color(0xff72ecc4),
                    ))
                  : GridView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: controller.isSearched.value
                          ? controller.productSearch.length
                          : controller.productList.length,
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 1,
                        crossAxisSpacing: 0,
                        childAspectRatio: MediaQuery.of(context).size.width /
                            (MediaQuery.of(context).size.height / 1.2),
                      ),
                      itemBuilder: (ctx, index) => Obx(() => ItemCard(
                            onTap: () {
                              Get.to(() => ProductDetailsScreen(
                                  productModels:
                                      controller.productList[index]));
                            },
                            price: controller.isSearched.value
                                ? controller.productSearch[index].price
                                    .toString()
                                : controller.productList[index].price
                                    .toString(),
                            image: controller.isSearched.value
                                ? controller.productSearch[index].coverImg
                                : controller.productList[index].coverImg,
                            quantity: controller.isSearched.value
                                ? controller.productSearch[index].quantity
                                    .toString()
                                : controller.productList[index].quantity
                                    .toString(),
                          )))),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8, top: 8),
              child: Text(
                'MostViewed Products',
                style: TextStyle(
                    color: Get.isDarkMode ? Colors.white : Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            // CardItems(),
          ],
        ),
      ),
    );
  }
}
