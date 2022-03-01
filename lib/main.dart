import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:rest_api_getx/bindings/user_bindings.dart';
import 'package:rest_api_getx/view/home.dart';
import 'package:rest_api_getx/view/user_details.dart';

void main() {
  UserBindings().dependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      initialRoute: "/home",
      getPages: [
        GetPage(
          name: "/home",
          page: () => const Home(),
          binding: UserBindings(),
        ),
        GetPage(
          name: "/user_details",
          page: () => UserDetails(),
          binding: UserBindings(),
        ),
      ],
      home: const Home(),
    );
  }
}
