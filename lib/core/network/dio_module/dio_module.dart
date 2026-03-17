import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:productCleanArchitecture/core/network/endpoint/app_endpoint.dart';

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
}
