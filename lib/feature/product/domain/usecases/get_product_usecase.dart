import 'package:productCleanArchitecture/feature/product/data/repositories/product_repo_impl.dart';
import 'package:productCleanArchitecture/feature/product/domain/entities/product_entities.dart';

class GetProductUsecase {
  final ProductRepoImpl _productRepoImpl;
  GetProductUsecase(this._productRepoImpl);
  Future<List<ProductEntities>> call() => _productRepoImpl.getProducts();
}
