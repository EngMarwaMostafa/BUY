import 'package:buyit/logic/controllers/cart_controller.dart';
import 'package:buyit/logic/controllers/product_controller.dart';
import 'package:get/get.dart';

class ProductBinding extends Bindings{
  @override
  void dependencies() {
    Get.put( ProductController ());
    Get.lazyPut(() => CartController());
  }
}
