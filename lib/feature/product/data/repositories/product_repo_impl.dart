import 'package:injectable/injectable.dart';
import 'package:productCleanArchitecture/core/network/base_response/base_response.dart';
import 'package:productCleanArchitecture/feature/product/data/datasources/product_remote_data_source_contract.dart';
import 'package:productCleanArchitecture/feature/product/data/mappers/Product_mappers.dart';
import 'package:productCleanArchitecture/feature/product/data/models/product_responce.dart';
import 'package:productCleanArchitecture/feature/product/domain/entities/product_entities.dart';
import 'package:productCleanArchitecture/feature/product/domain/repositories/product_repo_contract.dart';

@Injectable(as: ProductRepoContract)
class ProductRepoImpl implements ProductRepoContract {
  final ProductRemoteDataSourceContract _dataSourceContract;

  ProductRepoImpl(this._dataSourceContract);

  @override
  Future<BaseResponse<List<ProductEntities>>> getProducts(
    int page,
    int limit,
  ) async {
    final response = await _dataSourceContract.getProducts(page, limit);
    switch (response) {
      case SuccessBaseResponse<List<ProductResponce>>(data: final data):
        return SuccessBaseResponse<List<ProductEntities>>(
          data:
              data
                  .expand((e) => e.data.map((item) => item.toEntity()))
                  .toList(),
        );

      case ErrorBaseResponse<List<ProductResponce>>(exception: final exception):
        return ErrorBaseResponse<List<ProductEntities>>(exception: exception);
    }
  }
}
