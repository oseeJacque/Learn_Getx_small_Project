
import 'package:get/get.dart';
import 'package:getx_show_snackbar/services/getx.dart';

class AllController implements Bindings{

  @override
  void dependencies() { 
     Get.lazyPut<ServiceController>(() => ServiceController());
     Get.lazyPut<AnotherHomePageController>(() => AnotherHomePageController());
  }

 
  
}



class HomeBanding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<ServiceController>(() => ServiceController());
  }

}