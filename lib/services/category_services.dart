
import 'package:buyit/models/CategorieyModels.dart';
import 'package:buyit/utils/my_string.dart';
import 'package:http/http.dart' as http;


class CategoryServices {
  static Future<List<CategoryModels>> getCategory() async {
    var response = await http.get(Uri.parse('$baseUrl/categotries?lang=ar'));

    if (response.statusCode == 200) {
      var  jsonData = response.body;
      return categoryModelsFromJson(jsonData);
    } else {
      return throw Exception("Failed to load category");
    }
  }
}

