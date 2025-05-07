import 'package:json_annotation/json_annotation.dart';

part 'everyones_watching_model.g.dart';

@JsonSerializable()
class EveryonesWatchingModel {
  @JsonKey(name: 'results')
  List<EveryonesWatchingResultModel> results = const [];

  EveryonesWatchingModel({required this.results});

  factory EveryonesWatchingModel.fromJson(Map<String, dynamic> json) {
    return _$EveryonesWatchingModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$EveryonesWatchingModelToJson(this);
}

@JsonSerializable()
class EveryonesWatchingResultModel {
  @JsonKey(name: 'backdrop_path')
  String? backdropPath;
  @JsonKey(name: 'poster_path')
  String? posterPath;

  @JsonKey(name: 'original_name')
  String? originalName;
  @JsonKey(name: 'overview')
  String? overview;

  EveryonesWatchingResultModel({
    this.backdropPath,
    this.posterPath,
    this.originalName,
    this.overview,
  });

  factory EveryonesWatchingResultModel.fromJson(Map<String, dynamic> json) {
    return _$EveryonesWatchingResultModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$EveryonesWatchingResultModelToJson(this);
}
