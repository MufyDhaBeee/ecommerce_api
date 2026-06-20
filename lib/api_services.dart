import 'dart:convert';
import 'package:amozon_api/model/category_model.dart';
import 'package:amozon_api/model/products_model.dart';
import 'package:http/http.dart' as http;

Future<List<ProductsModal>> fetchProducts() async { // 1. Added List<> return type
  final response = await http.get(
    Uri.parse('https://fakestoreapi.com/products'),
  );
  print(response.body);
  if (response.statusCode == 200) {
    // 2. Use the helper function generated at the top of your model file
    return productsModalFromJson(response.body);
  } else {
    throw Exception('Failed to load products');
  }
}
Future<List<String>> fetchCategories()async{
  try{
    final response = await http.get(
      Uri.parse('https://fakestoreapi.com/products/categories'),
    );
    print(response.body);
    if (response.statusCode == 200) {
      // 2. Use the helper function generated at the top of your model file
      return categoriesModelFromJson(response.body);
    } else {
      throw Exception('Failed to load products');
    }
  }catch(e){
    print('something happening$e');
    throw Exception(e);
  }

}


