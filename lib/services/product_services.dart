import 'package:buyit/models/product_models.dart';
import 'package:buyit/utils/my_string.dart';
import 'package:dio/dio.dart';

class ProductServices {
  final Dio _dio = Dio();

  // Future<List<ProductModels>> getProduct() async {
  //   Response response =
  //       await _dio.get('$baseUrl/products?lang=en&categoryId=1');
  //
  //   if (response.statusCode == 200) {
  //     var jsonData = response.data;
  //     return jsonData.map((e) => ProductModels.fromJson(e)).toList();
  //   } else {
  //     return throw Exception("Failed to load product");
  //   }
  // }
Future<List<ProductModels>> getProduct() async {
  Response response = await _dio.get(
      "https://findfamily.net/eshop/api/buyers/products?lang=en&categoryId=1");
  if (response.statusCode == 200) {
    Iterable list = response.data['data'];
    print(response.data);
    return list.map((e) => ProductModels.fromJson(e)).toList();
  }
  throw 'exception';
}}
