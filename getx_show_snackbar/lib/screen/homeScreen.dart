import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/state_manager.dart';

import 'bottomSheet.dart';

class GetxSnackBar extends StatelessWidget {
  const GetxSnackBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List <String> par=["Bienvenue","Chez","Context","Coding"];
    bool col = false;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Snackbar"),
        actions: [],
      ),

      //Here I use get to show the dialogue when we click on floatingActionButton
      floatingActionButton: Container(
        width: 60,
        height: 60,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(100),
            ),
            color: Colors.blue),
        child: IconButton(
          onPressed: () {
            Get.defaultDialog(
              title: "Warning....",
              titleStyle: const TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
              titlePadding: const EdgeInsets.all(5.0),
              middleText: "Vous ête sur le point de creer un noueau post!!",
              middleTextStyle:
                  const TextStyle(fontSize: 15.0, color: Colors.black),
              radius: 10.0,
              backgroundColor: Colors.yellow,
              content: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  CircularProgressIndicator(
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(child: Text("Loading..."))
                ],
              ),
              actions: [
                Container(
                  width: 120,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(40.0)),
                      color: col ? Colors.white : Colors.blue),
                  child: ElevatedButton(
                      onPressed: () {
                        col = true;
                        Navigator.pop(context);
                      },
                      child: const Text(
                        "Exit",
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                ),
                Container(
                  width: 120,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(40.0)),
                      color: col ? Colors.white : Colors.blue),
                  child: ElevatedButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: const Text(
                        "Valider",
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                ),
              ],
            );
          },
          icon: const Icon(
            Icons.add,
            size: 30.0,
            color: Colors.white,
          ),
        ),
      ),


                                                         //Body is there

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Wrap(
              children: [
                TextButton(
                  onPressed: () {
                    Get.toNamed("/bottom?channel=$par & content=1");
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ))),
                  child: const Text(
                    "Sow SheetBottom Page",
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Get.toNamed("/reactive");
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ))),
                  child: const Text(
                    "Reactive Page",
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ), 

              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              width: 200,
              height: 50,
              child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                    shape: MaterialStateProperty.all(
                        const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)))),
                  ),
                  onPressed: () {
                    Get.snackbar("Snackbar Title", "I'm snackbar...",
                        titleText: const Text("Ceci est un avertissement"),
                        messageText: const Text(
                            "Vous aviez cliquez sur le bouton interdit"),
                        colorText: Colors.black,
                        backgroundColor: Colors.blue,
                        animationDuration: const Duration(milliseconds: 3000),
                        borderWidth: 4,
                        borderRadius: 30.0,
                        borderColor: Colors.yellow,
                        backgroundGradient: const LinearGradient(
                            colors: [Colors.white, Colors.white, Colors.green]),
                        snackPosition: SnackPosition.BOTTOM,
                        isDismissible: true,
                        dismissDirection: DismissDirection.horizontal,
                        duration: const Duration(seconds: 4),
                        forwardAnimationCurve: Curves.bounceInOut,
                        icon: const Icon(
                          Icons.send,
                          size: 30.0,
                        ),
                        overlayBlur: 2);
                  },
                  child: const Text(
                    "Schow Snackbar",
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
