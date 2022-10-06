import 'package:flutter/material.dart';
import 'package:getx_show_snackbar/screen/anotherhome.dart';
import 'package:getx_show_snackbar/screen/bottomSheet.dart';
import 'package:getx_show_snackbar/screen/homeScreen.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:getx_show_snackbar/screen/reactive.dart';
import 'package:getx_show_snackbar/services/allController.dart';
import 'package:getx_show_snackbar/services/getx.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: AllController(),
      defaultTransition: Transition.zoom,
      initialRoute: "/",
      getPages: [

        GetPage(name: "/", page:()=> const MyApp(),binding: AllController()), 
        GetPage(name: "/home", page: ()=>const GetxSnackBar(),binding: AllController()), 
        GetPage(name: "/bottom", page: ()=> const BottomSheetGetx(),
        fullscreenDialog: true,
        //binding: AllController()
        //transition:Transition.z, 
        ), 
        GetPage(name: "/reactive", page: ()=> const ReactiveStateManagement(), 
        binding: HomeBanding()
        
        ), 
        GetPage(name: "/another", page: ()=> const AnotherHomePage(),
        
        )
      ],
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const GetxSnackBar(),
    );
  }
}

