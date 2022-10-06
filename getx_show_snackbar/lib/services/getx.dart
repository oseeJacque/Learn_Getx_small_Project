
import 'dart:developer';

import 'package:get/get.dart';
import 'package:getx_show_snackbar/models/todo.dart';

class ServiceController extends GetxController{
  
  var items=  RxList<Todo>().obs;
  var counter=0.obs;

  addItem(Todo data){
  
} 

increment(){
  counter++;
  update(['cont']);
}
}


class AnotherHomePageController extends GetxController{

  var counter=0.obs;

  void increment(){
  counter ++;
    update();
  }
}