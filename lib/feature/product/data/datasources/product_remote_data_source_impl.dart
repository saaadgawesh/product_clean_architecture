import 'package:productCleanArchitecture/feature/product/api/product_api_client.dart';
import 'package:productCleanArchitecture/feature/product/data/datasources/product_remote_data_source_contract.dart';
import 'package:productCleanArchitecture/feature/product/data/models/productModels.dart';

class ProductRemoteDataSourceImpl implements ProductRemoteDataSourceContract {
  final ProductApiClient _apiClient;
  ProductRemoteDataSourceImpl(this._apiClient);

  @override
  Future<List<productModels>> getProducts() async {
    await Future.delayed(Duration(seconds: 2));
    return [
      productModels(id: "1", title: "product 1", price: 20),
      productModels(id: "2", title: "product 2", price: 30),
      productModels(id: "3", title: "product 3", price: 40),
    ];
  }
}
