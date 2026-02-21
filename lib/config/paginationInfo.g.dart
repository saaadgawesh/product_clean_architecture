// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginationInfo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

paginationInfo _$paginationInfoFromJson(Map<String, dynamic> json) =>
    paginationInfo(
      currentPage: (json['currentPage'] as num).toInt(),
      numberOfPages: (json['numberOfPages'] as num).toInt(),
      limit: (json['limit'] as num).toInt(),
      nextPage: (json['nextPage'] as num).toInt(),
    );

Map<String, dynamic> _$paginationInfoToJson(paginationInfo instance) =>
    <String, dynamic>{
      'currentPage': instance.currentPage,
      'numberOfPages': instance.numberOfPages,
      'limit': instance.limit,
      'nextPage': instance.nextPage,
    };
