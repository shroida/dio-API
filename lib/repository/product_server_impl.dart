import 'package:dio/dio.dart';
import 'package:dio_api/repository/products_server.dart';
import 'package:dio_api/view_model/modules/product.dart';

class ProductServerImpl with ProductsServer {
  @override
  Future<List<Product>> getProduct() async {
    try {
      List<Product> products = [];
      var response = await Dio().get('https://fakestoreapi.com/products');

      products = (response.data as List)
          .map((prod) => Product.fromJson(prod))
          .toList();
      return products;
    } catch (e) {
      rethrow;
    }
  }
}
