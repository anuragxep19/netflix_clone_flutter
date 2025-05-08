// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'downloads.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DownloadsModel _$DownloadsModelFromJson(Map<String, dynamic> json) =>
    _DownloadsModel(
      posterPath: json['poster_path'] as String?,
      backdropPath: json['backdrop_path'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$DownloadsModelToJson(_DownloadsModel instance) =>
    <String, dynamic>{
      'poster_path': instance.posterPath,
      'backdrop_path': instance.backdropPath,
      'title': instance.title,
    };
