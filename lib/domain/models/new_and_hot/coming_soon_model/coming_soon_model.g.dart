// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coming_soon_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ComingSoonModel _$ComingSoonModelFromJson(
  Map<String, dynamic> json,
) => ComingSoonModel(
  results:
      (json['results'] as List<dynamic>)
          .map((e) => ComingSoonResultModel.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$ComingSoonModelToJson(ComingSoonModel instance) =>
    <String, dynamic>{'results': instance.results};

ComingSoonResultModel _$ComingSoonResultModelFromJson(
  Map<String, dynamic> json,
) => ComingSoonResultModel(
  backdropPath: json['backdrop_path'] as String?,
  posterPath: json['poster_path'] as String?,
  originalTitle: json['original_title'] as String?,
  overview: json['overview'] as String?,
  releaseDate: json['release_date'] as String?,
);

Map<String, dynamic> _$ComingSoonResultModelToJson(
  ComingSoonResultModel instance,
) => <String, dynamic>{
  'backdrop_path': instance.backdropPath,
  'poster_path': instance.posterPath,
  'original_title': instance.originalTitle,
  'overview': instance.overview,
  'release_date': instance.releaseDate,
};
