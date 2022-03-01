// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rest_api_getx/constants.dart/ui_constants.dart';
import 'package:rest_api_getx/models/user.dart';
import 'package:rest_api_getx/view/user_details.dart';

class UserCard extends StatelessWidget {
  UserCard(this.user, {Key? key}) : super(key: key);

  User user = User();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: UiConstants.size.width * 0.60,
        width: UiConstants.size.width * 0.40,
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 5,
              spreadRadius: 5,
              offset: Offset(0, 5),
            )
          ],
        ),
        child: Column(children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(7),
            child: SizedBox(
              height: UiConstants.size.width * 0.39,
              width: UiConstants.size.width * 0.40,
              child: InkWell(
                onTap: () => Get.to(() => UserDetails(), arguments: user),
                child: Image(
                  fit: BoxFit.fill,
                  image: NetworkImage("${user.avatar}"),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${user.firstName} ${user.lastName}",
                style: const TextStyle(fontSize: 15),
              ),
              const Icon(
                Icons.favorite_outline,
                color: Colors.grey,
              )
            ],
          )
        ]),
      ),
    );
  }
}
