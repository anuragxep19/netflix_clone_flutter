// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_and_hot_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NewAndHotEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NewAndHotEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NewAndHotEvent()';
}


}

/// @nodoc
class $NewAndHotEventCopyWith<$Res>  {
$NewAndHotEventCopyWith(NewAndHotEvent _, $Res Function(NewAndHotEvent) __);
}


/// @nodoc


class NewAndHotInitialize implements NewAndHotEvent {
  const NewAndHotInitialize();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NewAndHotInitialize);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NewAndHotEvent.initialize()';
}


}




/// @nodoc


class EveryonesWatchingLoad implements NewAndHotEvent {
  const EveryonesWatchingLoad();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EveryonesWatchingLoad);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NewAndHotEvent.everyonesWatching()';
}


}




/// @nodoc
mixin _$NewAndHotState {

 List<ComingSoonResultModel> get comingSoonList; List<EveryonesWatchingResultModel> get everyonesWatchingList; bool get isLoading; bool get isError;
/// Create a copy of NewAndHotState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NewAndHotStateCopyWith<NewAndHotState> get copyWith => _$NewAndHotStateCopyWithImpl<NewAndHotState>(this as NewAndHotState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NewAndHotState&&const DeepCollectionEquality().equals(other.comingSoonList, comingSoonList)&&const DeepCollectionEquality().equals(other.everyonesWatchingList, everyonesWatchingList)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isError, isError) || other.isError == isError));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(comingSoonList),const DeepCollectionEquality().hash(everyonesWatchingList),isLoading,isError);

@override
String toString() {
  return 'NewAndHotState(comingSoonList: $comingSoonList, everyonesWatchingList: $everyonesWatchingList, isLoading: $isLoading, isError: $isError)';
}


}

/// @nodoc
abstract mixin class $NewAndHotStateCopyWith<$Res>  {
  factory $NewAndHotStateCopyWith(NewAndHotState value, $Res Function(NewAndHotState) _then) = _$NewAndHotStateCopyWithImpl;
@useResult
$Res call({
 List<ComingSoonResultModel> comingSoonList, List<EveryonesWatchingResultModel> everyonesWatchingList, bool isLoading, bool isError
});




}
/// @nodoc
class _$NewAndHotStateCopyWithImpl<$Res>
    implements $NewAndHotStateCopyWith<$Res> {
  _$NewAndHotStateCopyWithImpl(this._self, this._then);

  final NewAndHotState _self;
  final $Res Function(NewAndHotState) _then;

/// Create a copy of NewAndHotState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? comingSoonList = null,Object? everyonesWatchingList = null,Object? isLoading = null,Object? isError = null,}) {
  return _then(_self.copyWith(
comingSoonList: null == comingSoonList ? _self.comingSoonList : comingSoonList // ignore: cast_nullable_to_non_nullable
as List<ComingSoonResultModel>,everyonesWatchingList: null == everyonesWatchingList ? _self.everyonesWatchingList : everyonesWatchingList // ignore: cast_nullable_to_non_nullable
as List<EveryonesWatchingResultModel>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc


class _NewAndHotState implements NewAndHotState {
  const _NewAndHotState({required final  List<ComingSoonResultModel> comingSoonList, required final  List<EveryonesWatchingResultModel> everyonesWatchingList, required this.isLoading, required this.isError}): _comingSoonList = comingSoonList,_everyonesWatchingList = everyonesWatchingList;
  

 final  List<ComingSoonResultModel> _comingSoonList;
@override List<ComingSoonResultModel> get comingSoonList {
  if (_comingSoonList is EqualUnmodifiableListView) return _comingSoonList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_comingSoonList);
}

 final  List<EveryonesWatchingResultModel> _everyonesWatchingList;
@override List<EveryonesWatchingResultModel> get everyonesWatchingList {
  if (_everyonesWatchingList is EqualUnmodifiableListView) return _everyonesWatchingList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_everyonesWatchingList);
}

@override final  bool isLoading;
@override final  bool isError;

/// Create a copy of NewAndHotState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NewAndHotStateCopyWith<_NewAndHotState> get copyWith => __$NewAndHotStateCopyWithImpl<_NewAndHotState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NewAndHotState&&const DeepCollectionEquality().equals(other._comingSoonList, _comingSoonList)&&const DeepCollectionEquality().equals(other._everyonesWatchingList, _everyonesWatchingList)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isError, isError) || other.isError == isError));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_comingSoonList),const DeepCollectionEquality().hash(_everyonesWatchingList),isLoading,isError);

@override
String toString() {
  return 'NewAndHotState(comingSoonList: $comingSoonList, everyonesWatchingList: $everyonesWatchingList, isLoading: $isLoading, isError: $isError)';
}


}

/// @nodoc
abstract mixin class _$NewAndHotStateCopyWith<$Res> implements $NewAndHotStateCopyWith<$Res> {
  factory _$NewAndHotStateCopyWith(_NewAndHotState value, $Res Function(_NewAndHotState) _then) = __$NewAndHotStateCopyWithImpl;
@override @useResult
$Res call({
 List<ComingSoonResultModel> comingSoonList, List<EveryonesWatchingResultModel> everyonesWatchingList, bool isLoading, bool isError
});




}
/// @nodoc
class __$NewAndHotStateCopyWithImpl<$Res>
    implements _$NewAndHotStateCopyWith<$Res> {
  __$NewAndHotStateCopyWithImpl(this._self, this._then);

  final _NewAndHotState _self;
  final $Res Function(_NewAndHotState) _then;

/// Create a copy of NewAndHotState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? comingSoonList = null,Object? everyonesWatchingList = null,Object? isLoading = null,Object? isError = null,}) {
  return _then(_NewAndHotState(
comingSoonList: null == comingSoonList ? _self._comingSoonList : comingSoonList // ignore: cast_nullable_to_non_nullable
as List<ComingSoonResultModel>,everyonesWatchingList: null == everyonesWatchingList ? _self._everyonesWatchingList : everyonesWatchingList // ignore: cast_nullable_to_non_nullable
as List<EveryonesWatchingResultModel>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
