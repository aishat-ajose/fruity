import 'package:fruity/model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static var client = http.Client();

  // ignore: body_might_complete_normally_nullable
  static Future<List<FruitModel>?> fetchfruits() async {
    final response =
        await client.get(Uri.parse('https://www.fruityvice.com/api/fruit/all'));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return fruitFromJson(jsonString);
    }
  }
}
