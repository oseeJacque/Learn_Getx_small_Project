import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: controller.obx((data) {
        return ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: data?.length,
          itemBuilder: (context, index) {
          return Card(
              child: Column(
                children: [  
                  ListTile(
                    leading: CircleAvatar(
                      radius: 30, 
                      backgroundImage: NetworkImage(data![index]['picture']['large']),
                    ), 
                    title: Text(data[index]['name']['title']+" "+ data[index]['name']['first']+" "+ " "+data[index]['name']['last']),
                    subtitle: Text(data[index]['email'],style: const TextStyle(fontSize: 15),),
                    trailing: Text(data[index]['dob']['age'].toString()),
                  )
                ],
              ),
          );
        });
      },onError: (error) => Center(
        child: Text(error.toString()),
      ),)
    );
  }
}
