import 'package:injectable/injectable.dart';
import 'package:productCleanArchitecture/core/network/base_response/base_response.dart';
import 'package:productCleanArchitecture/feature/product/domain/entities/product_entities.dart';
import 'package:productCleanArchitecture/feature/product/domain/repositories/product_repo_contract.dart';

@injectable
class GetProductUsecase {
  final ProductRepoContract _productRepoContract;
  GetProductUsecase(this._productRepoContract);

  Future<List<ProductEntities>> call(int page, int limit) async {
    final response = await _productRepoContract.getProducts(page, limit);

    switch (response) {
      case SuccessBaseResponse<List<ProductEntities>>(data: final data):
        return data;
      case ErrorBaseResponse<List<ProductEntities>>(exception: final exception):
        throw exception;
    }
  }
}
