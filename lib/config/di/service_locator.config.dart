// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../core/network/dio_module/dio_module.dart' as _i23;
import '../../feature/product/api/api_client/product_api_client.dart' as _i621;
import '../../feature/product/data/datasources/product_remote_data_source_contract.dart'
    as _i385;
import '../../feature/product/api/data_source_impl/product_remote_data_source_impl.dart'
    as _i877;
import '../../feature/product/data/repositories/product_repo_impl.dart'
    as _i478;
import '../../feature/product/domain/repositories/product_repo_contract.dart'
    as _i846;
import '../../feature/product/domain/usecases/get_product_usecase.dart'
    as _i614;
import '../../feature/product/presentation/cubit/product_cubit.dart' as _i949;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final dioModule = _$DioModule();
    gh.singleton<_i361.Dio>(() => dioModule.dio);
    gh.lazySingleton<_i621.ProductApiClient>(
      () => dioModule.productApiClient(gh<_i361.Dio>()),
    );
    gh.factory<_i385.ProductRemoteDataSourceContract>(
      () => _i877.ProductRemoteDataSourceImpl(gh<_i621.ProductApiClient>()),
    );
    gh.factory<_i846.ProductRepoContract>(
      () => _i478.ProductRepoImpl(gh<_i385.ProductRemoteDataSourceContract>()),
    );
    gh.factory<_i614.GetProductUsecase>(
      () => _i614.GetProductUsecase(gh<_i846.ProductRepoContract>()),
    );
    gh.factory<_i949.ProductCubit>(
      () => _i949.ProductCubit(gh<_i614.GetProductUsecase>()),
    );
    return this;
  }
}

class _$DioModule extends _i23.DioModule {}
