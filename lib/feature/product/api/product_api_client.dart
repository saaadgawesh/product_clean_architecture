import 'package:productCleanArchitecture/feature/product/data/models/productModels.dart';

class ProductApiClient {
  Future<List<productModels>> getProducts() {
    return Future.value(<productModels>[]);
  }
}
