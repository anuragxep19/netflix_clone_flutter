// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'downloads_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DownloadsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DownloadsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DownloadsEvent()';
}


}

/// @nodoc
class $DownloadsEventCopyWith<$Res>  {
$DownloadsEventCopyWith(DownloadsEvent _, $Res Function(DownloadsEvent) __);
}


/// @nodoc


class GetDownloadsImage implements DownloadsEvent {
  const GetDownloadsImage();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetDownloadsImage);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DownloadsEvent.getDownloadsImage()';
}


}




/// @nodoc
mixin _$DownloadsState {

 bool get isLoading; List<DownloadsModel> get downloadsImages; Option<Either<MainFailure, List<DownloadsModel>>> get downloadsOption;
/// Create a copy of DownloadsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DownloadsStateCopyWith<DownloadsState> get copyWith => _$DownloadsStateCopyWithImpl<DownloadsState>(this as DownloadsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DownloadsState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other.downloadsImages, downloadsImages)&&(identical(other.downloadsOption, downloadsOption) || other.downloadsOption == downloadsOption));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(downloadsImages),downloadsOption);

@override
String toString() {
  return 'DownloadsState(isLoading: $isLoading, downloadsImages: $downloadsImages, downloadsOption: $downloadsOption)';
}


}

/// @nodoc
abstract mixin class $DownloadsStateCopyWith<$Res>  {
  factory $DownloadsStateCopyWith(DownloadsState value, $Res Function(DownloadsState) _then) = _$DownloadsStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, List<DownloadsModel> downloadsImages, Option<Either<MainFailure, List<DownloadsModel>>> downloadsOption
});




}
/// @nodoc
class _$DownloadsStateCopyWithImpl<$Res>
    implements $DownloadsStateCopyWith<$Res> {
  _$DownloadsStateCopyWithImpl(this._self, this._then);

  final DownloadsState _self;
  final $Res Function(DownloadsState) _then;

/// Create a copy of DownloadsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? downloadsImages = null,Object? downloadsOption = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,downloadsImages: null == downloadsImages ? _self.downloadsImages : downloadsImages // ignore: cast_nullable_to_non_nullable
as List<DownloadsModel>,downloadsOption: null == downloadsOption ? _self.downloadsOption : downloadsOption // ignore: cast_nullable_to_non_nullable
as Option<Either<MainFailure, List<DownloadsModel>>>,
  ));
}

}


/// @nodoc


class _DownloadState implements DownloadsState {
  const _DownloadState({required this.isLoading, required final  List<DownloadsModel> downloadsImages, required this.downloadsOption}): _downloadsImages = downloadsImages;
  

@override final  bool isLoading;
 final  List<DownloadsModel> _downloadsImages;
@override List<DownloadsModel> get downloadsImages {
  if (_downloadsImages is EqualUnmodifiableListView) return _downloadsImages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_downloadsImages);
}

@override final  Option<Either<MainFailure, List<DownloadsModel>>> downloadsOption;

/// Create a copy of DownloadsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DownloadStateCopyWith<_DownloadState> get copyWith => __$DownloadStateCopyWithImpl<_DownloadState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DownloadState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other._downloadsImages, _downloadsImages)&&(identical(other.downloadsOption, downloadsOption) || other.downloadsOption == downloadsOption));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(_downloadsImages),downloadsOption);

@override
String toString() {
  return 'DownloadsState(isLoading: $isLoading, downloadsImages: $downloadsImages, downloadsOption: $downloadsOption)';
}


}

/// @nodoc
abstract mixin class _$DownloadStateCopyWith<$Res> implements $DownloadsStateCopyWith<$Res> {
  factory _$DownloadStateCopyWith(_DownloadState value, $Res Function(_DownloadState) _then) = __$DownloadStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, List<DownloadsModel> downloadsImages, Option<Either<MainFailure, List<DownloadsModel>>> downloadsOption
});




}
/// @nodoc
class __$DownloadStateCopyWithImpl<$Res>
    implements _$DownloadStateCopyWith<$Res> {
  __$DownloadStateCopyWithImpl(this._self, this._then);

  final _DownloadState _self;
  final $Res Function(_DownloadState) _then;

/// Create a copy of DownloadsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? downloadsImages = null,Object? downloadsOption = null,}) {
  return _then(_DownloadState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,downloadsImages: null == downloadsImages ? _self._downloadsImages : downloadsImages // ignore: cast_nullable_to_non_nullable
as List<DownloadsModel>,downloadsOption: null == downloadsOption ? _self.downloadsOption : downloadsOption // ignore: cast_nullable_to_non_nullable
as Option<Either<MainFailure, List<DownloadsModel>>>,
  ));
}


}

// dart format on
