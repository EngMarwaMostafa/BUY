
import 'package:buyit/models/ProductDetailsModels.dart';
import 'package:buyit/services/product_details_service.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class ProductDetailsController extends GetxController {

  var dataList = <ProductDetailsModels>{}.obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    getProductDetails();
    super.onInit();
  }

  void getProductDetails() async{
    var categories = await ProductDetailsServices.getProductDetails();
  }
}