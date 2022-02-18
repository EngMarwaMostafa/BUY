import 'package:badges/badges.dart';
import 'package:buyit/logic/controllers/cart_controller.dart';
import 'package:buyit/models/ProductDetailsModels.dart';
import 'package:buyit/models/product_models.dart';
import 'package:buyit/routes/routes.dart';
import 'package:buyit/utils/theme.dart';
import 'package:buyit/view/widgets/home/card_items.dart';
import 'package:buyit/view/widgets/product_details/color_picker.dart';
import 'package:buyit/view/widgets/product_details/image_sliders.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';

import 'ReviewScreen.dart';

class ProductDetailsScreen extends StatelessWidget {
  final ProductModels productModels;
  final ProductDetailsModels productDetailsModels;
  final String name;
  final String rate;
  final String ModalNumber;
  final int price;
  final String dept;

  ProductDetailsScreen(
      {Key? key,
      required this.productDetailsModels,
      required this.productModels,
      required this.name,
      required this.rate,
      required this.ModalNumber,
      required this.price,
      required this.dept})
      : super(key: key);

  final cartController = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Obx(
        () {
          return Scaffold(
            backgroundColor: context.theme.backgroundColor,
            appBar: AppBar(
              elevation: 0,
              leading: Container(),
              actions: [
                Obx(
                  () => Row(
                    children: [
                      Badge(
                        position: BadgePosition.topEnd(top: 0, end: 3),
                        animationDuration: const Duration(milliseconds: 300),
                        animationType: BadgeAnimationType.slide,
                        badgeContent: Text(
                          cartController.quantity().toString(),
                          style: const TextStyle(color: Colors.white),
                        ),
                        child: IconButton(
                          onPressed: () {
                            Get.toNamed(Routes.ShoppingCartScreen);
                          },
                          icon: Image.asset('assets/images/shop.png'),
                        ),
                      ),
                      const Icon(
                        Icons.arrow_back_ios_outlined,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            body: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ImageSliders(
                    imageUrl: productModels.productImage[0].image!,
                    productImage: [],
                  ),
                  const Text(
                    //  Name:productDetailsModels.name,
                    'mmm',
                    style: TextStyle(
                      fontSize: 22,
                      color: Color(0xff515C6F),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 15),
                    child: Row(
                      children: [
                        RatingBarIndicator(
                          rating: 2.75,
                          itemBuilder: (context, index) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          itemCount: 5,
                          itemSize: 20.0,
                          direction: Axis.horizontal,
                        ),
                        const SizedBox(
                          width: 11,
                        ),
                        InkWell(
                          child: const Text(
                            ' Write A Review',
                            style: TextStyle(
                                fontSize: 12, color: Color(0xff686868)),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ReviewScreen()));
                          },
                        ),
                      ],
                    ),
                  ),
                  //    Text(
                  //    ModalNumber: productDetailsModels.modalNumber,
                  //   style: TextStyle(
                  //  color: Color(0xff515C6F),
                  //   fontSize: 16,
                  //     ),

                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 20),
                    child: Row(
                      children: [
                        //  Text(
                        //  price: productDetailsModels.price,
                        //   style: TextStyle(color: Colors.green),
                        //  ),
                        const SizedBox(
                          width: 19,
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 10, left: 20),
                          width: 180,
                          height: 46,
                          decoration: BoxDecoration(
                            color: const Color(0xffFFBE03),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 13),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const <Widget>[
                                Text('ADD TO CART',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(
                                  width: 38,
                                ),
                                CircleAvatar(
                                  radius: 15,
                                  backgroundColor: Colors.black,
                                  child: Icon(Icons.arrow_forward_ios,
                                      color: Colors.amber),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 145),
                    child: Container(
                      padding: const EdgeInsets.only(top: 10, left: 20),
                      width: 180,
                      height: 46,
                      decoration: BoxDecoration(
                        color: const Color(0xffFFBE03),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 13),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const <Widget>[
                            Text('ADD TO WISHLIST',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                              width: 38,
                            ),
                            CircleAvatar(
                              radius: 15,
                              backgroundColor: Colors.black,
                              child: Icon(Icons.arrow_forward_ios,
                                  color: Colors.amber),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 33, right: 250),
                    child: Text(
                      'SELECT COLOR',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff515C6F),
                      ),
                    ),
                  ),
                  ColorPicker(
                    productDetailsModels: productDetailsModels,
                    color: [],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 28),
                    child: Row(
                      children: const [
                        Text(
                          'Description',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 25),
                    child: Container(
                      width: 358,
                      height: 35,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const <Widget>[
                          SizedBox(
                            height: 5,
                          ),
                          Text('Department',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(
                            width: 90,
                          ),
                          Text(
                              //  dept:productDetailsModels.department,
                              '',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xff726D6D),
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 25),
                    child: Container(
                      width: 358,
                      height: 35,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const <Widget>[
                          SizedBox(
                            height: 5,
                          ),
                          Text('Model Number',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(
                            width: 70,
                          ),
                          Text(
                              //   ModalNumber:productDetailsModels.modalNumber,
                              '',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xff726D6D),
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 25, left: 10),
                    child: Text(
                      'Similar Products',
                      style: TextStyle(
                          color: Color(0xff515C6F),
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  CardItems(),

                  SizedBox(
                    width: 343,
                    height: 40,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        elevation: 0,
                        primary: Get.isDarkMode ? pinkClr : mainColor,
                      ),
                      onPressed: () {
                        Get.toNamed(Routes.mainScreen);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Text('SEE ALL',
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(
                            width: 38,
                          ),
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.black,
                            child: Icon(Icons.arrow_forward_ios,
                                color: Colors.amber),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
