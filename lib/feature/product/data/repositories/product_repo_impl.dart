import 'package:injectable/injectable.dart';
import 'package:product_clean_architecture/core/network/base_response/base_response.dart';
import 'package:product_clean_architecture/feature/product/data/datasources/product_remote_data_source_contract.dart';
import 'package:product_clean_architecture/feature/product/data/mappers/Product_mappers.dart';
import 'package:product_clean_architecture/feature/product/data/models/productModels.dart';
import 'package:product_clean_architecture/feature/product/data/models/product_responce.dart';
import 'package:product_clean_architecture/feature/product/domain/entities/product_entities.dart';
import 'package:product_clean_architecture/feature/product/domain/repositories/product_repo_contract.dart';

@Injectable(as: ProductRepoContract)
class ProductRepoImpl implements ProductRepoContract {
  final ProductRemoteDataSourceContract _dataSourceContract;

  ProductRepoImpl(this._dataSourceContract);

  @override
  Future<BaseResponse<List<ProductEntities>>> getProducts(
  {  int? page,
    int? limit,}
  ) async {
    final response = await _dataSourceContract.getProducts(page: page, limit: limit);
    switch (response) {
      case SuccessBaseResponse<List<productModels>>(data: final data):
        return SuccessBaseResponse<List<ProductEntities>>(
          data: data.map((e) => e.toEntity()).toList(),
        );

      case ErrorBaseResponse<List<productModels>>():
        return ErrorBaseResponse<List<ProductEntities>>(
          exception: response.exception,
        );
    }
  }
}
