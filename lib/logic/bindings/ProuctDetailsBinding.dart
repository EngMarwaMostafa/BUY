
import 'package:buyit/logic/controllers/cart_controller.dart';
import 'package:buyit/logic/controllers/product_details_controller.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/get_instance/src/extension_instance.dart';

class ProductDetailsBinding extends Bindings{
  @override
  void dependencies() {
    Get.put( ProductDetailsController ());
    Get.lazyPut(() => CartController());
  }
}
