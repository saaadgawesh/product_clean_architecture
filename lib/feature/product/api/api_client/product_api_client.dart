import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:productCleanArchitecture/core/network/endpoint/app_endpoint.dart';
import 'package:productCleanArchitecture/feature/product/data/models/product_responce.dart';
import 'package:retrofit/retrofit.dart';

part 'product_api_client.g.dart';

@lazySingleton
@RestApi()
abstract class ProductApiClient {
  factory ProductApiClient(Dio dio) = _ProductApiClient;

  @GET(AppEndpoint.products)
  Future<List<ProductResponce>> getProducts(
    @Query("page") int page,
    @Query("limit") int limit,
    
  );
}
