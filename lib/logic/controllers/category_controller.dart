import 'package:buyit/models/CategorieyModels.dart';
import 'package:buyit/services/category_services.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get_storage/get_storage.dart';
/*
class CategoryController extends GetxController {
  var categoryList = <CategoryModels>[].obs;
  var favouritesList = <CategoryModels>[].obs;
  var isLoading = true.obs;
  var stoarge = GetStorage();


  var searchList = <CategoryModels>[].obs;
  TextEditingController searchTextController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    getCategories();
  }

  void getCategories() async {
    var categories = await CategoryServices.getCategory();

    try {
      isLoading(true);
      if (categories.isNotEmpty) {
        categoryList.addAll(categories);
      }
    } finally {
      isLoading(false);
    }
  }

  //logic for favorites Screen
  void manageFavorites(int categoryId) async {
    var existingIndex =
    favouritesList.indexWhere((element) => element.id == categoryId);

    if (existingIndex >= 0) {
      favouritesList.removeAt(existingIndex);
      await stoarge.remove('isFavoritesList');
    } else {
      favouritesList
          .add(categoryList.firstWhere((element) => element.id == categoryId));

      await stoarge.write('isFavoritesList', favouritesList);
    }
  }

  bool isFavorites(int productId) {
    return favouritesList.any((element) => element.id == productId);
  }

  //search Bar Logic
  void addSearchToList(String searchName) {
    searchName = searchName.toLowerCase();

    searchList.value = categoryList.where((search) {
      var searchTitle = search.title.toLowerCase();


      return searchTitle.contains(searchName) ;
    }).toList();

    update();
  }

  void clearSearch() {
    searchTextController.clear();
    addSearchToList('');
  }
}

*/