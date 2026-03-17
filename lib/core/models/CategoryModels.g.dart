// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CategoryModels.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryModels _$CategoryModelsFromJson(Map<String, dynamic> json) =>
    CategoryModels(
      id: json['_id'] as String,
      name: json['name'] as String,
      slug: json['slug'] as String,
      image: json['image'] as String,
    );

Map<String, dynamic> _$CategoryModelsToJson(CategoryModels instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'image': instance.image,
    };
