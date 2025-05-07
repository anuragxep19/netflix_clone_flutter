import 'package:json_annotation/json_annotation.dart';
part 'search.g.dart';

@JsonSerializable()
class SearchModel {
  @JsonKey(name: 'results')
  List<SearchResultModel> results;

  SearchModel({this.results = const []});

  factory SearchModel.fromJson(Map<String, dynamic> json) {
    return _$SearchModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchModelToJson(this);
}

@JsonSerializable()
class SearchResultModel {
  @JsonKey(name: 'original_title')
  String? originalTitle;

  @JsonKey(name: 'poster_path')
  String? posterPath;

  SearchResultModel({this.originalTitle, this.posterPath});

  factory SearchResultModel.fromJson(Map<String, dynamic> json) {
    return _$SearchResultModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchResultModelToJson(this);
}
