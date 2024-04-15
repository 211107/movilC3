// import 'dart:convert';
// import 'package:http/http.dart' as http;

// import 'package:untitled/models/product_model.dart';

// class ProductService {
//   Future<List<ProductModel>> fetchProducts() async {
//     final response = await http.get(Uri.parse('https://api.escuelajs.co/api/v1/products'));

//     if (response.statusCode == 200) {
//       final List body = jsonDecode(response.body);

//       List<ProductModel> products = body.map(
//         (product) => ProductModel.fromJson(
//           {
//             'id': product['id'],
//             'title': product['title'],
//             'price': product['price'],
//             'description': product['description'],
//             'images': List<String>.from(product['images']),
//           }
//         ),
//       ).toList();

//       return products;
//     } else {
//       throw Exception('Failed to load products');
//     }
//   }
// }