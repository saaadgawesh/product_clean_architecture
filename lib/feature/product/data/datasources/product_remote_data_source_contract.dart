import 'package:product_clean_architecture/core/network/base_response/base_response.dart';
import 'package:product_clean_architecture/feature/product/data/models/productModels.dart';

abstract class ProductRemoteDataSourceContract {
  Future<BaseResponse<List<productModels>>> getProducts({required int ?page,required int?limit});
}
