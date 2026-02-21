import 'package:productCleanArchitecture/feature/product/data/models/productModels.dart';

abstract class ProductRemoteDataSourceContract {
  Future<List<productModels>> getProducts();
}
