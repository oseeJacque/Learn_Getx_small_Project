

import 'package:get/get.dart';
import 'package:getx_fetch_api_learning/apimodule/api_service.dart';
import 'package:getx_fetch_api_learning/productmodule/models/product_module.dart';

class ProductController extends GetxController{
  var isLoading=true.obs;
  var productList=<ProductModel>[].obs;

  @override 
  void onInit(){
    fetchPrdoducts();
    super.onInit();
  }

  void fetchPrdoducts()async{
    try{
      isLoading(true);
      var products=await ApiService.fetchProducts();
      if (products !=null){
        productList.assignAll(products);
      }
      
    }finally{
      isLoading(false);
    }
  }
}