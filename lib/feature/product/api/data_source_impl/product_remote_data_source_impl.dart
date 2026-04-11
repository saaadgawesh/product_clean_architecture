import 'package:injectable/injectable.dart';
import 'package:product_clean_architecture/core/network/base_response/base_response.dart';
import 'package:product_clean_architecture/feature/product/api/api_client/product_api_client.dart';
import 'package:product_clean_architecture/feature/product/data/datasources/product_remote_data_source_contract.dart';
import 'package:product_clean_architecture/feature/product/data/models/productModels.dart';

@Injectable(as: ProductRemoteDataSourceContract)
class ProductRemoteDataSourceImpl implements ProductRemoteDataSourceContract {
  final ProductApiClient _apiClient;
  ProductRemoteDataSourceImpl(this._apiClient);

  @override
  Future<BaseResponse<List<productModels>>> getProducts(
   { int? page,
    int ?limit,}
  ) async {
    try {
      final response = await _apiClient.getProducts(page: page, limit: limit);
      return SuccessBaseResponse<List<productModels>>(data: response.data);
    } on Exception catch (e) {
      return ErrorBaseResponse<List<productModels>>(
        exception: e,
      );
    }
  }
}
