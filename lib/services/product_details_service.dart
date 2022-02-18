import 'package:buyit/models/ProductDetailsModels.dart';
import 'package:buyit/utils/my_string.dart';
import 'package:http/http.dart' as http;

class ProductDetailsServices {
  static Future<ProductDetailsModels> getProductDetails() async {

    var response = await http.get(Uri.parse('$baseUrl/product-details?productId=1&lang=ar'));
    if (response.statusCode == 200) {
      var  jsonData = response.body;
      return productDetailsModelsFromJson(jsonData);
    } else {
      return throw Exception("Failed to load category");
    }
  }
}

