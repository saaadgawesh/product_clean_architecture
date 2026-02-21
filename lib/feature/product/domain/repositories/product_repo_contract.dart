import 'package:productCleanArchitecture/feature/product/domain/entities/product_entities.dart';

abstract class ProductRepoContract {
  Future<List<ProductEntities>> getProducts();
}
