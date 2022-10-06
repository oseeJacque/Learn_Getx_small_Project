import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_fetch_api_learning/screen/homePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "/",
      defaultTransition: Transition.circularReveal,
      transitionDuration: const Duration(microseconds: 3000),
      getPages: [
        GetPage(name: "/", page: ()=>MyHomePage())
      ],
    );
  }
  
}

