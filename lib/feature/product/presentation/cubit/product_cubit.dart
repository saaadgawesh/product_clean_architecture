import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:product_clean_architecture/core/network/base_state/base_state.dart';
import 'package:product_clean_architecture/feature/product/domain/entities/product_entities.dart';
import 'package:product_clean_architecture/feature/product/domain/usecases/get_product_usecase.dart';

@injectable
class ProductCubit extends Cubit<BaseState<List<ProductEntities>>> {
  final GetProductUsecase _getProductUsecase;
  ProductCubit(this._getProductUsecase)
    : super(BaseState<List<ProductEntities>>());

  Future<void> getProduct(int page, int limit) async {
    emit(state.copyWith(isLoadingParam: true));

    try {
      final products = await _getProductUsecase.call(page, limit);
      emit(state.copyWith(isLoadingParam: false, dataParam: products));
    } on Exception catch (e) {
      emit(
        state.copyWith(
          isLoadingParam: false,
          errorMessageParam: e.toString(),
        ),
      );
    }
  }
}
