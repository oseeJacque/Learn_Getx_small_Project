import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_show_snackbar/screen/homeScreen.dart';

class BottomSheetGetx extends StatelessWidget {
  const BottomSheetGetx({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //var data= Get.to(()=>const GetxSnackBar());
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "BottomSheet",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                " Hi!!${Get.parameters["channel"]}",
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: 180,
              height: 50,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                  color: Colors.blue),
              child: TextButton(
                  onPressed: () async {
                    //var data= await Get.to(()=>const GetxSnackBar());
                    Get.bottomSheet(
                      Wrap(
                        children: [
                          ListTile(
                            leading: const Icon(
                              Icons.wb_sunny_outlined,
                              size: 30,
                              color: Colors.black,
                            ),
                            title: const Text("Light theme"),
                            onTap: () {
                              Get.changeTheme(ThemeData.light());
                              Get.back();
                            },
                          ),
                          ListTile(
                            leading: const Icon(Icons.wb_sunny,
                                size: 30, color: Colors.black),
                            title: const Text("Dark theme "),
                            onTap: () {
                              Get.changeTheme(ThemeData.dark());
                              Get.back();
                            },
                          )
                        ],
                      ),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          side: BorderSide(
                              color: Colors.red,
                              width: 2.0,
                              style: BorderStyle.solid)),
                      backgroundColor: Colors.blue,
                      barrierColor: Colors.black38,
                    );
                  },
                  child: const Text(
                    "BottomSheet",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
