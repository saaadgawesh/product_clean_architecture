import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:product_clean_architecture/core/network/endpoint/app_endpoint.dart';
import 'package:product_clean_architecture/feature/product/api/api_client/product_api_client.dart';

@module
abstract class DioModule {
  @singleton
  Dio get dio => Dio(
    BaseOptions(
      connectTimeout: Duration(seconds: 10),
      receiveTimeout: Duration(seconds: 10),
      baseUrl: AppEndpoint.baseUrl,
    ),
  );

  @lazySingleton
  ProductApiClient productApiClient(Dio dio) => ProductApiClient(dio);
}
