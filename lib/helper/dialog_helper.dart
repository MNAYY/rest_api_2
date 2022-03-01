import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogHelper {
  static void showErrorDialog(String title, String describtion) {
    Get.dialog(Dialog(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(title),
            Text(describtion),
            ElevatedButton(
                onPressed: () {
                  if (Get.isDialogOpen!) {
                    Get.back();
                  }
                },
                child: const Text("OK"))
          ],
        ),
      ),
    ));
  }
}
