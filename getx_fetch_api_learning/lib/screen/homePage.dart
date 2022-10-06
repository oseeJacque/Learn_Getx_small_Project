import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:getx_fetch_api_learning/commonmodule/appColor.dart';
import 'package:getx_fetch_api_learning/commonmodule/appString.dart';
import 'package:getx_fetch_api_learning/productmodule/controllers/product_controller.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final ProductController productController=Get.put(ProductController());
    return Scaffold(
      appBar: AppBar(
        title: Text(AppString.productList),
        actions: []),
        body: Obx((){
          if(productController.isLoading.value){
            return Center(child: CircularProgressIndicator(color: AppColor.grey,),);
          }else{
            return ListView.builder(
              itemCount: productController.productList.length,
              itemBuilder: (context, index) {
                return Column(
                   children: [
                    Row(
                      children: [
                        Container(
                          width: 150,
                          height: 100,
                          margin: EdgeInsets.fromLTRB(16,8,8,8),
                          child: ClipRRect(

                            borderRadius: BorderRadius.circular(8),
                            child:Image.network(productController.productList[index].imageLink,width: 150,height: 100,fit: BoxFit.fill,color: AppColor.purpleColor,colorBlendMode: BlendMode.color,)
                          ),
                          ),
                        Flexible(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(productController.productList[index].name,style: const TextStyle(fontSize: 20),),
                              Text(productController.productList[index].brand,style: const TextStyle(fontSize: 15),),
                              Text(productController.productList[index].category,style: TextStyle(fontSize: 15,color: AppColor.grey),)


                            ],
                          ))
                      ],
                    )
                   ],
                );
              });
          }
        }),
    );
  }
}