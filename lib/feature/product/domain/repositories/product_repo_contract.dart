import 'package:productCleanArchitecture/core/network/base_response/base_response.dart';
import 'package:productCleanArchitecture/feature/product/domain/entities/product_entities.dart';

abstract class ProductRepoContract {
  Future<BaseResponse<List<ProductEntities>>> getProducts( int page,
    int limit,);
}
