import 'package:productCleanArchitecture/feature/product/domain/usecases/get_product_usecase.dart';

class ProductCubit {
  final GetProductUsecase _getProductUsecase;
  ProductCubit(this._getProductUsecase);
  Future<void>getProduct()async{
    await _getProductUsecase.call();
  }
}
