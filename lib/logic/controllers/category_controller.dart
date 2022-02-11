
import 'package:buyit/models/CategorieyModels.dart';
import 'package:buyit/services/category_services.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';


class CategoryController extends GetxController {

  var dataList = <CategoryModels>{}.obs;
  var isLoading = true.obs;

 @override
  void onInit() {
   getCategory();
    super.onInit();
  }

  void getCategory() async{
    var categories = await CategoryServices.getCategory();
  }

}