import 'package:http/http.dart' as http;

import '../productmodule/models/product_module.dart';


class ApiService{
  static var client=http.Client();

  static Future <List<ProductModel>> fetchProducts() async{
    var response = await client.get( Uri.parse("https://makeup-api.herokuapp.com/api/v1/products.json?brand=marienatie")

    );
    if (response.statusCode==200){
      var jsonString = response.body;
      return productFromMap(jsonString);
    }else{
      return [];
    }
  }
}