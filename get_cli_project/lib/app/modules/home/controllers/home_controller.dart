import 'package:get/get.dart';
import 'package:get_cli_project/app/data/providers/user_provider.dart';

class HomeController extends GetxController with StateMixin<List<dynamic>>{
  //TODO: Implement HomeController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    UserProvider().getUser().then((value){
      change(value,status: RxStatus.success());
    },
    onError: (err){
      change(null,status:
      RxStatus.error(err.toString()));
    }
    );
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
