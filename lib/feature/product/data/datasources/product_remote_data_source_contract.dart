import 'package:productCleanArchitecture/core/network/base_response/base_response.dart';
import 'package:productCleanArchitecture/feature/product/data/models/product_responce.dart';

abstract class ProductRemoteDataSourceContract {
  Future<BaseResponse<List<ProductResponce>>> getProducts(int page, int limit);
}
