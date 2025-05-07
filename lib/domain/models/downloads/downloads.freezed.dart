// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'downloads.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DownloadsModel {

@JsonKey(name: "poster_path") String? get posterPath;@JsonKey(name: "title") String? get title;
/// Create a copy of DownloadsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DownloadsModelCopyWith<DownloadsModel> get copyWith => _$DownloadsModelCopyWithImpl<DownloadsModel>(this as DownloadsModel, _$identity);

  /// Serializes this DownloadsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DownloadsModel&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,posterPath,title);

@override
String toString() {
  return 'DownloadsModel(posterPath: $posterPath, title: $title)';
}


}

/// @nodoc
abstract mixin class $DownloadsModelCopyWith<$Res>  {
  factory $DownloadsModelCopyWith(DownloadsModel value, $Res Function(DownloadsModel) _then) = _$DownloadsModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "poster_path") String? posterPath,@JsonKey(name: "title") String? title
});




}
/// @nodoc
class _$DownloadsModelCopyWithImpl<$Res>
    implements $DownloadsModelCopyWith<$Res> {
  _$DownloadsModelCopyWithImpl(this._self, this._then);

  final DownloadsModel _self;
  final $Res Function(DownloadsModel) _then;

/// Create a copy of DownloadsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? posterPath = freezed,Object? title = freezed,}) {
  return _then(_self.copyWith(
posterPath: freezed == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _DownloadsModel implements DownloadsModel {
  const _DownloadsModel({@JsonKey(name: "poster_path") required this.posterPath, @JsonKey(name: "title") required this.title});
  factory _DownloadsModel.fromJson(Map<String, dynamic> json) => _$DownloadsModelFromJson(json);

@override@JsonKey(name: "poster_path") final  String? posterPath;
@override@JsonKey(name: "title") final  String? title;

/// Create a copy of DownloadsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DownloadsModelCopyWith<_DownloadsModel> get copyWith => __$DownloadsModelCopyWithImpl<_DownloadsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DownloadsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DownloadsModel&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,posterPath,title);

@override
String toString() {
  return 'DownloadsModel(posterPath: $posterPath, title: $title)';
}


}

/// @nodoc
abstract mixin class _$DownloadsModelCopyWith<$Res> implements $DownloadsModelCopyWith<$Res> {
  factory _$DownloadsModelCopyWith(_DownloadsModel value, $Res Function(_DownloadsModel) _then) = __$DownloadsModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "poster_path") String? posterPath,@JsonKey(name: "title") String? title
});




}
/// @nodoc
class __$DownloadsModelCopyWithImpl<$Res>
    implements _$DownloadsModelCopyWith<$Res> {
  __$DownloadsModelCopyWithImpl(this._self, this._then);

  final _DownloadsModel _self;
  final $Res Function(_DownloadsModel) _then;

/// Create a copy of DownloadsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? posterPath = freezed,Object? title = freezed,}) {
  return _then(_DownloadsModel(
posterPath: freezed == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
