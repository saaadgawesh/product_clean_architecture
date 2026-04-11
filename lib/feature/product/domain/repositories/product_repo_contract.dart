import 'package:product_clean_architecture/core/network/base_response/base_response.dart';
import 'package:product_clean_architecture/feature/product/domain/entities/product_entities.dart';

abstract class ProductRepoContract {
  Future<BaseResponse<List<ProductEntities>>> getProducts({required int? page,required int ?limit});
}
