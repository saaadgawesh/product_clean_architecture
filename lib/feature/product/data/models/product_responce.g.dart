// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_responce.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductResponce _$ProductResponceFromJson(Map<String, dynamic> json) =>
    ProductResponce(
      results: (json['results'] as num).toInt(),
      metadata: paginationInfo.fromJson(
        json['metadata'] as Map<String, dynamic>,
      ),
      data:
          (json['data'] as List<dynamic>)
              .map((e) => productModels.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$ProductResponceToJson(ProductResponce instance) =>
    <String, dynamic>{
      'results': instance.results,
      'metadata': instance.metadata,
      'data': instance.data,
    };
