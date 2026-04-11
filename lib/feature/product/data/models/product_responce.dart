// To parse this JSON data, do
//
//     final productResponce = productResponceFromJson(jsonString);

import 'package:product_clean_architecture/core/models/paginationInfo.dart';
import 'package:product_clean_architecture/feature/product/data/models/productModels.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'product_responce.g.dart';

ProductResponce productResponceFromJson(String str) => ProductResponce.fromJson(json.decode(str));

String productResponceToJson(ProductResponce data) => json.encode(data.toJson());

@JsonSerializable()
class ProductResponce {
    @JsonKey(name: "results")
    int? results;
    @JsonKey(name: "metadata")
    paginationInfo? metadata;
    @JsonKey(name: "data")
    List<productModels> data;

    ProductResponce({
        required this.results,
        required this.metadata,
        required this.data,
    });

    factory ProductResponce.fromJson(Map<String, dynamic> json) => _$ProductResponceFromJson(json);

    Map<String, dynamic> toJson() => _$ProductResponceToJson(this);
}
