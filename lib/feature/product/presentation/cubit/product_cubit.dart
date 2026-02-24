import 'package:productCleanArchitecture/feature/product/domain/entities/product_entities.dart';
import 'package:productCleanArchitecture/feature/product/domain/usecases/get_product_usecase.dart';

class ProductCubit {
  final GetProductUsecase _getProductUsecase;
  ProductCubit(this._getProductUsecase);
  Future<void> getProduct() async {
    List<ProductEntities> products = await _getProductUsecase.call();
    products.forEach((product) {
      print(
        "======================================" + product.price.toString(),
      );
    });
  }
}
