
import 'package:buyit/logic/controllers/cart_controller.dart';
import 'package:buyit/logic/controllers/product_controller.dart';
import 'package:buyit/utils/theme.dart';
import 'package:buyit/view/widgets/home/card_items.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';


class HomeScreen extends StatefulWidget {
 HomeScreen({Key? key}) : super(key: key);

  final controller =Get.put(ProductController());
 final  cartController = Get.put(CartController());

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      body:
     Container(
       width: double.infinity,
       height: double.maxFinite,
       child: ListView(
          children: [
        Container(
              color: const Color(0xffEFEFEF),
              height: 60,
              child: Container(
                margin: const EdgeInsets.only(top: 7, left: 15, right: 14, bottom: 7),
                decoration: BoxDecoration(
                  color: Get.isDarkMode ? darkGreyClr : mainColor,
       borderRadius: const BorderRadius.all(
         Radius.circular(5),
       ),
     ),
      child:
                TextField(
                  decoration: InputDecoration(
                    hintText: "Search Something",
                    prefixIcon: const ImageIcon(
                      AssetImage('assets/icons/search.png'),
                    ),
                    hintStyle: TextStyle(
                        color: const Color(0xff515C6F).withOpacity(0.4),
                        fontSize: 15
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 8,top: 8),
              child: Row(
                children:[
                  Text(
                    'National Day Products',
                    style: TextStyle(
                        color: Get.isDarkMode ? Colors.white : Colors.black,
                        fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
                                     const SizedBox(height: 5,),
                                     CardItems(),
       Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 8,top: 8),
               child:   Text('MostViewed Products',
                    style: TextStyle(
                        color: Get.isDarkMode ? Colors.white : Colors.black,
                        fontSize: 15, fontWeight: FontWeight.bold),
                  ),
              ),
            const SizedBox(height: 5,),
           CardItems(),
           ],
        ),
     ),
    );
  }
}

