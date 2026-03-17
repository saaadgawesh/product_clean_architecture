import 'package:injectable/injectable.dart';
import 'package:productCleanArchitecture/core/error/handler_exception.dart';
import 'package:productCleanArchitecture/core/network/base_response/base_response.dart';
import 'package:productCleanArchitecture/feature/product/api/api_client/product_api_client.dart';
import 'package:productCleanArchitecture/feature/product/data/datasources/product_remote_data_source_contract.dart';
import 'package:productCleanArchitecture/feature/product/data/models/product_responce.dart';

@Injectable(as: ProductRemoteDataSourceContract)
class ProductRemoteDataSourceImpl implements ProductRemoteDataSourceContract {
  final ProductApiClient _apiClient;
  ProductRemoteDataSourceImpl(this._apiClient);

  @override
  Future<BaseResponse<ProductResponce>> getProducts(
    int page,
    int limit,
  ) async {
    try {
      final response = await _apiClient.getProducts(page, limit);
      return SuccessBaseResponse<ProductResponce>(data: response);
    } on Exception catch (e) {
      return ErrorBaseResponse<ProductResponce>(
        exception: Exception(ErrorHandler.handle(e)),
      );
    }
  }
}
