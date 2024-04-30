import 'package:http/http.dart' as http;
import 'package:store_app2/helpers/api.dart';
import 'package:store_app2/models/product_model.dart';

class AddProductService {
  Future<ProductModel> addProduct(
      {required String title,
      required dynamic price,
      required String desc,
      required String image,
      required String category}) async {
    Map<String, dynamic> data =
        await Api().post(url: 'https://fakestoreapi.com/products', body: {
      'title': title,
      'price': price,
      'description': desc,
      'image': image,
      'category': category
    });
    return ProductModel.fromJson(data);
  }
}
