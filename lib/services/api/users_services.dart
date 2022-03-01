import 'package:http/http.dart' as http;
import 'package:rest_api_getx/controllers/users_controller.dart';

class Usersservices {
  static Future<http.Response> getUsers() {
    var uri = Uri.parse("https://reqres.in/api/users");

    return http.get(uri).catchError((e) {
      UsersController.errorHandler(e);
    });
  }
}
