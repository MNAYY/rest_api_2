import 'package:get/get.dart';
import 'package:rest_api_getx/controllers/users_controller.dart';

class UserBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UsersController(), tag: "UsersController");
  }
}
