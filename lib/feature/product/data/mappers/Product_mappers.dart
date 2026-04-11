import 'package:product_clean_architecture/feature/product/data/models/productModels.dart';
import 'package:product_clean_architecture/feature/product/domain/entities/product_entities.dart';

extension ProductMappers on productModels {
  ProductEntities toEntity() {
    return ProductEntities(
      id: id,
      name: title,
      description: description ?? "",
      price: price,
      imageUrl: imageCover ?? "",
    );
  }
}
