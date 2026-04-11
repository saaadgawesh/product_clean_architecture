import 'package:product_clean_architecture/core/models/Brand.dart';
import 'package:product_clean_architecture/core/models/CategoryModels.dart';
import 'package:product_clean_architecture/core/models/Subcategory.dart';
import 'package:json_annotation/json_annotation.dart';

part 'productModels.g.dart';

@JsonSerializable()
class productModels {
  @JsonKey(name: "sold")
  double? sold;
  @JsonKey(name: "images")
  List<String>? images;
  @JsonKey(name: "subcategory")
  List<Subcategory>? subcategory;
  @JsonKey(name: "ratingsQuantity")
  int? ratingsQuantity;
  @JsonKey(name: "_id")
  String id;
  @JsonKey(name: "title")
  String title;
  @JsonKey(name: "slug")
  String? slug;
  @JsonKey(name: "description")
  String? description;
  @JsonKey(name: "quantity")
  int? quantity;
  @JsonKey(name: "price")
  int price;
  @JsonKey(name: "imageCover")
  String? imageCover;
  @JsonKey(name: "category")
  CategoryModels? category;
  @JsonKey(name: "brand")
  Brand? brand;
  @JsonKey(name: "ratingsAverage")
  double? ratingsAverage;
  @JsonKey(name: "createdAt")
  DateTime? createdAt;
  @JsonKey(name: "updatedAt")
  DateTime? updatedAt;
  @JsonKey(name: "id")
  String? datumId;
  @JsonKey(name: "priceAfterDiscount")
  int? priceAfterDiscount;
  @JsonKey(name: "availableColors")
  List<dynamic>? availableColors;

  productModels({
    required this.id,
    required this.title,
    required this.price,
    this.sold,
    this.images,
    this.subcategory,
    this.ratingsQuantity,

    this.slug,
    this.description,
    this.quantity,

    this.imageCover,
    this.category,
    this.brand,
    this.ratingsAverage,
    this.createdAt,
    this.updatedAt,
    this.datumId,
    this.priceAfterDiscount,
    this.availableColors,
  });

  factory productModels.fromJson(Map<String, dynamic> json) =>
      _$productModelsFromJson(json);

  Map<String, dynamic> toJson() => _$productModelsToJson(this);
}
