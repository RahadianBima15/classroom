import 'package:http/http.dart' as http;
import 'package:caterer_study/api_file/get_user.dart';

const String baseUrl = 'https://reqres.in';

class ApiService {
  static Future getUsers() {
    var url = baseUrl + "/api/users?page=2";
    return http.get(url);
  }
  // final String baseUrl = 'https://reqres.in';
  // Client client = Client();

  // Future<List<User>> getUsers() async {
  //   final response = await client.get("$baseUrl/api/users?page=2");
  //   if (response.statusCode == 200) {
  //      return userFromJson(response.body);
  //   } else {
  //     return null;
  //   }
  // }
}
