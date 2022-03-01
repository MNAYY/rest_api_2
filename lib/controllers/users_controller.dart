import 'dart:convert';
import 'package:get/get.dart';
import 'package:rest_api_getx/helper/dialog_helper.dart';
import 'package:rest_api_getx/models/base_response.dart';
import 'package:rest_api_getx/models/user.dart';
import 'package:rest_api_getx/services/api/users_services.dart';

class UsersController extends GetxController {
  var usersList = <User>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();

    getUsers();
  }

  void setUsersList(List<User> v) {
    usersList.value = v;
  }

  void setIsLoading(bool v) {
    isLoading.value = v;
  }

  void getUsers() async {
    var response = await Usersservices.getUsers();

    if (response.statusCode == 200) {
      var baseResponse =
          BaseResponse.fromJson((json.decode(response.body) as dynamic));

      setUsersList(baseResponse.data!);
      setIsLoading(false);
    } else {
      // ignore: avoid_print
      print(response.statusCode);
    }
  }

  static void errorHandler(var e) {
    DialogHelper.showErrorDialog("Error", e.toString());
  }
}
