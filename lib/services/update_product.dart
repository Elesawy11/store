import 'package:http/http.dart' as http;
import 'package:store_app2/helpers/api.dart';
import 'package:store_app2/models/product_model.dart';

class UpdateProductService {
  Future<ProductModel> updateProduct(
      {required String title,
      required dynamic price,
      required String desc,
      required String image,
      required String category,
      required int id}) async {
        print(id);
    Map<String, dynamic> data =
        await Api().put(url: 'https://fakestoreapi.com/products/$id', body: {
          
      'title': title,
      'price': price,
      'description': desc,
      'image': image,
      'category': category
    });
    print(data);
    return ProductModel.fromJson(data);
  }
}
