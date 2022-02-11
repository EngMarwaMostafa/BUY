import 'package:buyit/models/product_models.dart';
import 'package:buyit/services/product_services.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ProductController extends GetxController {
  final _services = ProductServices();
  final productList = <ProductModels>[].obs;
  final productSearch = <ProductModels>[].obs;
  var favouritesList = <ProductModels>[].obs;
  var isLoading = true.obs;
  final isSearched = false.obs;

  var stoarge = GetStorage();

//search
  var searchList = <ProductModels>[].obs;
  TextEditingController searchTextController = TextEditingController();

  get() async {
    productList.assignAll(await _services.getProduct());
  }

  @override
  void onInit() {
    super.onInit();
    get();
    List? storedShoppings = stoarge.read<List>('isFavouritesList');

    if (storedShoppings != null) {
      favouritesList =
          storedShoppings.map((e) => ProductModels.fromJson(e)).toList().obs;
    }
    // getProducts();
  }

  //logic for favorites Screen
  void manageFavourites(int productId) async {
    var existingIndex =
        favouritesList.indexWhere((element) => element.id == productId);

    if (existingIndex >= 0) {
      favouritesList.removeAt(existingIndex);
      await stoarge.remove("isFavouritesList");
    } else {
      favouritesList
          .add(productList.firstWhere((element) => element.id == productId));

      await stoarge.write("isFavouritesList", favouritesList);
    }
  }

  bool isFavourites(int productId) {
    return favouritesList.any((element) => element.id == productId);
  }

  //search Bar Logic

  onFilter(String string) {
    productSearch.clear();
    if (string.isEmpty) {
      productSearch.isEmpty;
      isSearched.value = false;
    } else {
      isSearched.value = true;
      productSearch.addAll(productList
          .where((e) => e.name!
              .trim()
              .toLowerCase()
              .contains(string.trim().toLowerCase()))
          .toList());
    }
  }
}
