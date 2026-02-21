import 'package:json_annotation/json_annotation.dart';
part 'paginationInfo.g.dart';
@JsonSerializable()
class paginationInfo {
    @JsonKey(name: "currentPage")
    int currentPage;
    @JsonKey(name: "numberOfPages")
    int numberOfPages;
    @JsonKey(name: "limit")
    int limit;
    @JsonKey(name: "nextPage")
    int nextPage;

    paginationInfo({
        required this.currentPage,
        required this.numberOfPages,
        required this.limit,
        required this.nextPage,
    });

    factory paginationInfo.fromJson(Map<String, dynamic> json) => _$paginationInfoFromJson(json);

    Map<String, dynamic> toJson() => _$paginationInfoToJson(this);
}
