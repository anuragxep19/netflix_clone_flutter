// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'everyones_watching_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EveryonesWatchingModel _$EveryonesWatchingModelFromJson(
  Map<String, dynamic> json,
) => EveryonesWatchingModel(
  results:
      (json['results'] as List<dynamic>)
          .map(
            (e) => EveryonesWatchingResultModel.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
);

Map<String, dynamic> _$EveryonesWatchingModelToJson(
  EveryonesWatchingModel instance,
) => <String, dynamic>{'results': instance.results};

EveryonesWatchingResultModel _$EveryonesWatchingResultModelFromJson(
  Map<String, dynamic> json,
) => EveryonesWatchingResultModel(
  backdropPath: json['backdrop_path'] as String?,
  posterPath: json['poster_path'] as String?,
  originalName: json['original_name'] as String?,
  overview: json['overview'] as String?,
);

Map<String, dynamic> _$EveryonesWatchingResultModelToJson(
  EveryonesWatchingResultModel instance,
) => <String, dynamic>{
  'backdrop_path': instance.backdropPath,
  'poster_path': instance.posterPath,
  'original_name': instance.originalName,
  'overview': instance.overview,
};
