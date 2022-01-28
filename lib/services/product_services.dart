
import 'package:buyit/models/product_models.dart';
import 'package:buyit/utils/my_string.dart';
import 'package:http/http.dart' as http;


class ProductServices {
  static Future<List<ProductModels>> getProduct() async {
    var response = await http.get(Uri.parse('$baseUrl/products?lang=en&categoryId=1'));

    if (response.statusCode == 200) {
      var  jsonData = response.body;
      return productModelsFromJson(jsonData);
    } else {
      return throw Exception("Failed to load product");
    }
  }
}
