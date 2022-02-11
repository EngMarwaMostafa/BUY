// import 'package:buyit/logic/controllers/cart_controller.dart';
// import 'package:buyit/logic/controllers/category_controller.dart';
// import 'package:buyit/logic/controllers/product_controller.dart';
// import 'package:buyit/models/product_models.dart';
// import 'package:buyit/utils/theme.dart';
// import 'package:buyit/view/screens/ProductDetailsScreen.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:get/get_instance/src/extension_instance.dart';
// import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
// import 'package:get/get.dart';
//
// import '../Item1.dart';
//
// class CardItems extends StatelessWidget {
//   CardItems({Key? key}) : super(key: key);
//
//   final controller = Get.put(ProductController());
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 300,
//       width: Get.width,
//       child: Obx(
//         () => controller.productList.isEmpty
//             ? const Center(
//                 child: CircularProgressIndicator(
//                   color: Color(0xff72ecc4),
//                 ),
//               )
//             : ListView.builder(
//                 physics: ClampingScrollPhysics(),
//                 padding: const EdgeInsets.symmetric(vertical: 10.0),
//                 shrinkWrap: true,
//                 scrollDirection: Axis.horizontal,
//                 itemCount: controller.searchList.isEmpty
//                     ? controller.productList.length
//                     : controller.searchList.length,
//                 itemBuilder: (BuildContext context, int index) {
//                   if (controller.searchList.isEmpty) {
//                     return buildCardItems(
//                         productImage: controller.productList[index].coverImg!,
//                         price: controller.productList[index].price,
//                         productModels: controller.productList[index],
//                         productId: controller.productList[index].categoryId,
//                         productname: controller.productList[index].name,
//                         onTap: () {
//                           Get.to(() => ProductDetailsScreen(
//                                 productModels: controller.productList[index],
//                               ));
//                         });
//                   } else {
//                     return buildCardItems(
//                         productImage: controller.productList[index].coverImg!,
//                         price: controller.productList[index].price,
//                         productModels: controller.productList[index],
//                         productId: controller.productList[index].categoryId,
//                         productname: controller.productList[index].name,
//                         onTap: () {
//                           print("vvv0");
//                           Get.to(() => ProductDetailsScreen(
//                                 productModels: controller.searchList[index],
//                               ));
//                         });
//                   }
//                 },
//               ),
//       ),
//     );
//   }
// }
