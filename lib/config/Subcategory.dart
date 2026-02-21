import 'package:json_annotation/json_annotation.dart';
  part 'Subcategory.g.dart';
@JsonSerializable()
class Subcategory {
    @JsonKey(name: "_id")
    String id;
    @JsonKey(name: "name")
    String name;
    @JsonKey(name: "slug")
    String slug;
    @JsonKey(name: "category")
    String category;

    Subcategory({
        required this.id,
        required this.name,
        required this.slug,
        required this.category,
    });

    factory Subcategory.fromJson(Map<String, dynamic> json) => _$SubcategoryFromJson(json);

    Map<String, dynamic> toJson() => _$SubcategoryToJson(this);
}
