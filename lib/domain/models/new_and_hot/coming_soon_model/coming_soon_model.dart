import 'package:json_annotation/json_annotation.dart';

part 'coming_soon_model.g.dart';

@JsonSerializable()
class ComingSoonModel {
  @JsonKey(name: 'results')
  List<ComingSoonResultModel> results = const [];

  ComingSoonModel({required this.results});

  factory ComingSoonModel.fromJson(Map<String, dynamic> json) {
    return _$ComingSoonModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ComingSoonModelToJson(this);
}

@JsonSerializable()
class ComingSoonResultModel {
  @JsonKey(name: 'backdrop_path')
  String? backdropPath;
  @JsonKey(name: 'poster_path')
  String? posterPath;
  @JsonKey(name: 'original_title')
  String? originalTitle;
  @JsonKey(name: 'overview')
  String? overview;

  @JsonKey(name: 'release_date')
  String? releaseDate;

  ComingSoonResultModel({
    this.backdropPath,
    this.posterPath,

    this.originalTitle,
    this.overview,

    this.releaseDate,
  });

  factory ComingSoonResultModel.fromJson(Map<String, dynamic> json) {
    return _$ComingSoonResultModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ComingSoonResultModelToJson(this);
}
