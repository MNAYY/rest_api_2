import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:rest_api_getx/constants.dart/ui_constants.dart';
import 'package:rest_api_getx/controllers/users_controller.dart';
import 'package:rest_api_getx/view/card.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    UsersController usersController = Get.find(tag: "UsersController");

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "users",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 67, 131, 117),
      ),
      backgroundColor: const Color.fromARGB(255, 169, 194, 176),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 10),
        child: Obx(() {
          if (usersController.isLoading.value) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return MasonryGridView.count(
                crossAxisCount: 2,
                itemCount: usersController.usersList.length,
                crossAxisSpacing: UiConstants.size.width * 0.05,
                mainAxisSpacing: 20,
                itemBuilder: (context, index) {
                  return UserCard(usersController.usersList.elementAt(index));
                });
          }
        }),
      ),
    );
  }
}
