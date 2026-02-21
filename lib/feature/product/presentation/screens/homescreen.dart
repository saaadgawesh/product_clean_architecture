import 'package:productCleanArchitecture/feature/product/api/product_api_client.dart';
import 'package:productCleanArchitecture/feature/product/data/datasources/product_remote_data_source_impl.dart';
import 'package:productCleanArchitecture/feature/product/data/repositories/product_repo_impl.dart';
import 'package:productCleanArchitecture/feature/product/domain/usecases/get_product_usecase.dart';
import 'package:productCleanArchitecture/feature/product/presentation/cubit/product_cubit.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    ProductCubit productCubit = ProductCubit(
      GetProductUsecase(
        ProductRepoImpl(ProductRemoteDataSourceImpl(ProductApiClient())),
      ),
    );
    productCubit.getProduct();
    return Scaffold(appBar: AppBar(title: Text('hello')));
  }
}
