import 'package:productCleanArchitecture/feature/product/data/datasources/product_remote_data_source_contract.dart';
import 'package:productCleanArchitecture/feature/product/data/datasources/product_remote_data_source_impl.dart';
import 'package:productCleanArchitecture/feature/product/data/mappers/Product_mappers.dart';
import 'package:productCleanArchitecture/feature/product/domain/entities/product_entities.dart';
import 'package:productCleanArchitecture/feature/product/domain/repositories/product_repo_contract.dart';

class ProductRepoImpl implements ProductRepoContract {
  final ProductRemoteDataSourceImpl _dataSourceImpl;

  ProductRepoImpl(this._dataSourceImpl);

  @override
  Future<List<ProductEntities>> getProducts() {
    return _dataSourceImpl.getProducts().then((value) {
      return value.map((e) => e.toEntity()).toList();
    });
  }
}
