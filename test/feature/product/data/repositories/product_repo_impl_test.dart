import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:product_clean_architecture/core/network/base_response/base_response.dart';
import 'package:product_clean_architecture/feature/product/api/data_source_impl/product_remote_data_source_impl.dart';
import 'package:product_clean_architecture/feature/product/data/models/productModels.dart';
import 'package:product_clean_architecture/feature/product/data/repositories/product_repo_impl.dart';
import 'package:product_clean_architecture/feature/product/domain/entities/product_entities.dart';
import 'product_repo_impl_test.mocks.dart';

@GenerateMocks([ProductRemoteDataSourceImpl])
//arange
void main() {
  late ProductRepoImpl productRepoImpl;
  late MockProductRemoteDataSourceImpl mockProductRemoteDataSource;
  late String error;

  setUpAll(() {
    error = 'Something went wrong';
    // provideDummy <BaseResponse<ProductResponce>>(SuccessBaseResponse<ProductResponce>(
    //       data: ProductResponce(
    //         results: 1,
    //          metadata: paginationInfo(currentPage: 1, numberOfPages: 5, limit: 10, nextPage: 2),
    //           data: []

    //    )) );

    mockProductRemoteDataSource = MockProductRemoteDataSourceImpl();
    productRepoImpl = ProductRepoImpl(mockProductRemoteDataSource);
  });

  group('GetProduct Function ', () async{
   group("success cases", (){
     test('Test Success Case With Empty List', () async {
      when(mockProductRemoteDataSource.getProducts()).thenAnswer(
        (_) async => SuccessBaseResponse<List<productModels>>(
          data: []) );
      //act
     final result=await productRepoImpl.getProducts();
     //assert
      expect(result,isA<SuccessBaseResponse<List<ProductEntities>>>() );
       expect(( result as SuccessBaseResponse<List<ProductEntities>>).data,isEmpty );
       verify(mockProductRemoteDataSource.getProducts()).called(1);



    });
    test(' Test Success Case With Data List', () async {
      final List <productModels> productModelsList=
      List.generate(10, (index) => productModels(id: index.toString(), title: 'title $index',
       price: index+1000, imageCover: 'imageCover $index', description: 'description $index'));
       when(mockProductRemoteDataSource.getProducts()).thenAnswer(
        (_) async => SuccessBaseResponse<List<productModels>>(
          data: productModelsList) );
      //act
     final result=await productRepoImpl.getProducts();
     //assert
      expect(result,isA<SuccessBaseResponse<List<ProductEntities>>>() );
       expect(( result as SuccessBaseResponse<List<ProductEntities>>).data.length,productModelsList.length );


       expect(result.data.first.id, productModelsList.first.id);
       expect(result.data.first.price, productModelsList.first.price);
       expect(result.data.first.description, productModelsList.first.description);
       expect(result.data.last.id, productModelsList.last.id);
       expect(result.data.last.price, productModelsList.last.price);
       expect(result.data.last.description, productModelsList.last.description);
       verify(mockProductRemoteDataSource.getProducts()).called(1);

    });

   });
    group('error response', () async{
      test(' Test Error Case With Error Message', () async {

       when(mockProductRemoteDataSource.getProducts()).thenAnswer(
        (_) async => ErrorBaseResponse<List<productModels>>(exception: Exception(error)));
      //act
     final result=await productRepoImpl.getProducts();
     //assert
      expect(result,isA<ErrorBaseResponse<List<ProductEntities>>>() );
       expect(( result as ErrorBaseResponse<List<ProductEntities>>).exception.toString(),isNotEmpty) ;
       expect( result.exception.toString(),isNotNull) ;
       expect( result.exception.toString(),error) ;
    });

  });
  });

}
