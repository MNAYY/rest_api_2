// ignore_for_file: must_be_immutable, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rest_api_getx/models/user.dart';

class UserDetails extends StatelessWidget {
  UserDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 67, 131, 117),
        title: const Text("user details"),
        leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () => Get.back()),
      ),
      body: Column(
        children: [
          SizedBox(
            height: size.height * 0.10,
          ),
          Align(
            alignment: Alignment.center,
            child: ClipOval(
              child: SizedBox(
                height: size.height * 0.20,
                width: size.width * 0.40,
                child: Image(
                  image: NetworkImage("${(Get.arguments as User).avatar}"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          Text(
              "${(Get.arguments as User).firstName} ${(Get.arguments as User).lastName}"),
        ],
      ),
    );
  }
}
