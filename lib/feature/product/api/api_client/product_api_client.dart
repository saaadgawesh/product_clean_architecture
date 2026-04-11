import 'package:dio/dio.dart';
import 'package:product_clean_architecture/core/network/endpoint/app_endpoint.dart';
import 'package:product_clean_architecture/feature/product/data/models/product_responce.dart';
import 'package:retrofit/retrofit.dart';

part 'product_api_client.g.dart';

@RestApi()
abstract class ProductApiClient {
  factory ProductApiClient(Dio dio) = _ProductApiClient;

  @GET(AppEndpoint.products)
  Future<ProductResponce> getProducts(
  {  @Query("page") int ?page,
    @Query("limit") int ?limit,}
  );
}
