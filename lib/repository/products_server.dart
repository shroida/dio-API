import 'package:dio_api/view_model/modules/product.dart';

mixin ProductsServer {
  Future<List<Product>> getProduct();
}
