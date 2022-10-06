import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_show_snackbar/services/getx.dart';

class AnotherHomePage extends StatelessWidget {
  const AnotherHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //AnotherHomePageController  anotherHomePageController= Get.put(AnotherHomePageController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Another homePage"),
        centerTitle: true,
      ),
      body: Center(
        
        child: Column( 
          children: [
            const SizedBox(height: 20.0,),
            Obx(()=>Text("The value of counter is ${Get.find<AnotherHomePageController>().counter.value}")),
            Obx(()=>Text("The value of counter is ${Get.find<ServiceController>().counter.value}")),

            TextButton(
                  onPressed: () {
                    Get.find<AnotherHomePageController>().increment();
                  },
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                          const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0)))),
                      backgroundColor: MaterialStateProperty.all(Colors.blue)),
                  child: const Text(
                    "Incrementation Using Obx",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 20.0,),
              TextButton(
                  onPressed: () {
                    Get.toNamed("/reactive");
                  },
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                          const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0)))),
                      backgroundColor: MaterialStateProperty.all(Colors.blue)),
                  child: const Text(
                    "Reactive Page",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
          ],
        ),
      ),
    );
  }
}