import 'package:json_annotation/json_annotation.dart';
part 'CategoryModels.g.dart';
@JsonSerializable()
class CategoryModels {
    @JsonKey(name: "_id")
    String id;
    @JsonKey(name: "name")
    String name;
    @JsonKey(name: "slug")
    String slug;
    @JsonKey(name: "image")
    String image;

    CategoryModels({
        required this.id,
        required this.name,
        required this.slug,
        required this.image,
    });

    factory CategoryModels.fromJson(Map<String, dynamic> json) => _$CategoryModelsFromJson(json);

    Map<String, dynamic> toJson() => _$CategoryModelsToJson(this);
}
