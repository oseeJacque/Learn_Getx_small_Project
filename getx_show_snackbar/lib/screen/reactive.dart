import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_show_snackbar/services/getx.dart';

class ReactiveStateManagement extends StatefulWidget {
  const ReactiveStateManagement({Key? key}) : super(key: key);

  @override
  State<ReactiveStateManagement> createState() =>
      _ReactiveStateManagementState();
}

class _ReactiveStateManagementState extends State<ReactiveStateManagement> {
  //ServiceController serviceController = Get.put(ServiceController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Reactive",
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 20.0,
              ),

              //Using getBuilder
              // GetBuilder<ServiceController>(
              //     id: "hgh",
              //     init: ServiceController(),
              //     builder: (controller) {
              //       return Text(
              //           "La valeur actuelle du compteur est ${controller.counter.value}");
              //     }),
              // const SizedBox(
              //   height: 10.0,
              // ),
              // TextButton(
              //   onPressed: () {
              //     Get.find<ServiceController>().increment();
              //   },
              //   style: ButtonStyle(
              //       shape: MaterialStateProperty.all(
              //           const RoundedRectangleBorder(
              //               borderRadius:
              //                   BorderRadius.all(Radius.circular(20.0)))),
              //       backgroundColor: MaterialStateProperty.all(Colors.blue)),
              //   child: const Text(
              //     "Incrementation Using GetBuilder",
              //     style: TextStyle(
              //         color: Colors.black,
              //         fontSize: 15,
              //         fontWeight: FontWeight.bold),
              //   ),
              // ),
              const SizedBox(
                height: 20.0,
              ),

              //Using Obx
              Obx(() => Text(
                  "La valeur actuelle du compteur est ${Get.find<ServiceController>().counter}")),
              const SizedBox(
                height: 10.0,
              ),
              TextButton(
                onPressed: () {
                  Get.find<ServiceController>().increment();
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
              const SizedBox(
                height: 30.0,
              ),

              //Using GetX
              GetX<ServiceController>(
                init: ServiceController(),
                builder: ((controller) => Text(
                    "La valeur actuelle de counter est ${controller.counter.value}")),
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextButton(
                onPressed: () {
                  Get.find<ServiceController>().increment();
                },
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                        const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)))),
                    backgroundColor: MaterialStateProperty.all(Colors.blue)),
                child: const Text(
                  "Incrementation Using GetX",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              TextButton(
                onPressed: () {
                  Get.toNamed("/another");
                },
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                        const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)))),
                    backgroundColor: MaterialStateProperty.all(Colors.blue)),
                child: const Text(
                  "Antother Page",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ));
  }
}
