import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:checkpoint/models/product_model.dart';

class ProductService {
  final String _baseUrl = 'https://fakestoreapi.com/products';

  Future<List<ProductModel>> getProducts() async {
    try {
      final response = await http.get(Uri.parse(_baseUrl));

      if (response.statusCode == 200) {
        List<dynamic> body = jsonDecode(response.body);
        List<ProductModel> products = body
            .map(
              (dynamic item) => ProductModel.fromJson(item),
            )
            .toList();
        return products;
      } else {
        throw Exception('Falha ao carregar produtos');
      }
    } catch (e) {
      throw Exception('Erro na requisição: $e');
    }
  }
}
