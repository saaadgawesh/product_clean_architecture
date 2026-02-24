import 'package:productCleanArchitecture/feature/product/data/models/productModels.dart';

class ProductApiClient {
  Future<List<productModels>> getProducts() async {
    await Future.delayed(Duration(seconds: 2));
    return [
      productModels(id: "1", title: "product 1", price: 20),
      productModels(id: "2", title: "product 2", price: 30),
      productModels(id: "3", title: "product 3", price: 40),
    ];
  }
}
