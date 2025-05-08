import 'package:freezed_annotation/freezed_annotation.dart';
part 'downloads.freezed.dart';
part 'downloads.g.dart';

@freezed
abstract class DownloadsModel with _$DownloadsModel {
  const factory DownloadsModel({
    // ignore: invalid_annotation_target
    @JsonKey(name: "poster_path") required String? posterPath,
    // ignore: invalid_annotation_target
    @JsonKey(name: "backdrop_path") required String? backdropPath,
    // ignore: invalid_annotation_target
    @JsonKey(name: "title") required String? title,
  }) = _DownloadsModel;

  factory DownloadsModel.fromJson(Map<String, dynamic> json) =>
      _$DownloadsModelFromJson(json);
}
