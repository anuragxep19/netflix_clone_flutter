// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent()';
}


}

/// @nodoc
class $HomeEventCopyWith<$Res>  {
$HomeEventCopyWith(HomeEvent _, $Res Function(HomeEvent) __);
}


/// @nodoc


class HomeInitialize implements HomeEvent {
  const HomeInitialize();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeInitialize);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.initialize()';
}


}




/// @nodoc
mixin _$HomeState {

 String get id; List<ComingSoonResultModel> get releasedInThePastYearList; List<ComingSoonResultModel> get trendingNowList; List<ComingSoonResultModel> get tenseDramasList; List<ComingSoonResultModel> get southIndianCinemaList; List<EveryonesWatchingResultModel> get top10TvShowsInIndiaTodayList; bool get isLoading; bool get isError;
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeStateCopyWith<HomeState> get copyWith => _$HomeStateCopyWithImpl<HomeState>(this as HomeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.releasedInThePastYearList, releasedInThePastYearList)&&const DeepCollectionEquality().equals(other.trendingNowList, trendingNowList)&&const DeepCollectionEquality().equals(other.tenseDramasList, tenseDramasList)&&const DeepCollectionEquality().equals(other.southIndianCinemaList, southIndianCinemaList)&&const DeepCollectionEquality().equals(other.top10TvShowsInIndiaTodayList, top10TvShowsInIndiaTodayList)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isError, isError) || other.isError == isError));
}


@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(releasedInThePastYearList),const DeepCollectionEquality().hash(trendingNowList),const DeepCollectionEquality().hash(tenseDramasList),const DeepCollectionEquality().hash(southIndianCinemaList),const DeepCollectionEquality().hash(top10TvShowsInIndiaTodayList),isLoading,isError);

@override
String toString() {
  return 'HomeState(id: $id, releasedInThePastYearList: $releasedInThePastYearList, trendingNowList: $trendingNowList, tenseDramasList: $tenseDramasList, southIndianCinemaList: $southIndianCinemaList, top10TvShowsInIndiaTodayList: $top10TvShowsInIndiaTodayList, isLoading: $isLoading, isError: $isError)';
}


}

/// @nodoc
abstract mixin class $HomeStateCopyWith<$Res>  {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) _then) = _$HomeStateCopyWithImpl;
@useResult
$Res call({
 String id, List<ComingSoonResultModel> releasedInThePastYearList, List<ComingSoonResultModel> trendingNowList, List<ComingSoonResultModel> tenseDramasList, List<ComingSoonResultModel> southIndianCinemaList, List<EveryonesWatchingResultModel> top10TvShowsInIndiaTodayList, bool isLoading, bool isError
});




}
/// @nodoc
class _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._self, this._then);

  final HomeState _self;
  final $Res Function(HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? releasedInThePastYearList = null,Object? trendingNowList = null,Object? tenseDramasList = null,Object? southIndianCinemaList = null,Object? top10TvShowsInIndiaTodayList = null,Object? isLoading = null,Object? isError = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,releasedInThePastYearList: null == releasedInThePastYearList ? _self.releasedInThePastYearList : releasedInThePastYearList // ignore: cast_nullable_to_non_nullable
as List<ComingSoonResultModel>,trendingNowList: null == trendingNowList ? _self.trendingNowList : trendingNowList // ignore: cast_nullable_to_non_nullable
as List<ComingSoonResultModel>,tenseDramasList: null == tenseDramasList ? _self.tenseDramasList : tenseDramasList // ignore: cast_nullable_to_non_nullable
as List<ComingSoonResultModel>,southIndianCinemaList: null == southIndianCinemaList ? _self.southIndianCinemaList : southIndianCinemaList // ignore: cast_nullable_to_non_nullable
as List<ComingSoonResultModel>,top10TvShowsInIndiaTodayList: null == top10TvShowsInIndiaTodayList ? _self.top10TvShowsInIndiaTodayList : top10TvShowsInIndiaTodayList // ignore: cast_nullable_to_non_nullable
as List<EveryonesWatchingResultModel>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc


class _HomeState implements HomeState {
  const _HomeState({required this.id, required final  List<ComingSoonResultModel> releasedInThePastYearList, required final  List<ComingSoonResultModel> trendingNowList, required final  List<ComingSoonResultModel> tenseDramasList, required final  List<ComingSoonResultModel> southIndianCinemaList, required final  List<EveryonesWatchingResultModel> top10TvShowsInIndiaTodayList, required this.isLoading, required this.isError}): _releasedInThePastYearList = releasedInThePastYearList,_trendingNowList = trendingNowList,_tenseDramasList = tenseDramasList,_southIndianCinemaList = southIndianCinemaList,_top10TvShowsInIndiaTodayList = top10TvShowsInIndiaTodayList;
  

@override final  String id;
 final  List<ComingSoonResultModel> _releasedInThePastYearList;
@override List<ComingSoonResultModel> get releasedInThePastYearList {
  if (_releasedInThePastYearList is EqualUnmodifiableListView) return _releasedInThePastYearList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_releasedInThePastYearList);
}

 final  List<ComingSoonResultModel> _trendingNowList;
@override List<ComingSoonResultModel> get trendingNowList {
  if (_trendingNowList is EqualUnmodifiableListView) return _trendingNowList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_trendingNowList);
}

 final  List<ComingSoonResultModel> _tenseDramasList;
@override List<ComingSoonResultModel> get tenseDramasList {
  if (_tenseDramasList is EqualUnmodifiableListView) return _tenseDramasList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tenseDramasList);
}

 final  List<ComingSoonResultModel> _southIndianCinemaList;
@override List<ComingSoonResultModel> get southIndianCinemaList {
  if (_southIndianCinemaList is EqualUnmodifiableListView) return _southIndianCinemaList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_southIndianCinemaList);
}

 final  List<EveryonesWatchingResultModel> _top10TvShowsInIndiaTodayList;
@override List<EveryonesWatchingResultModel> get top10TvShowsInIndiaTodayList {
  if (_top10TvShowsInIndiaTodayList is EqualUnmodifiableListView) return _top10TvShowsInIndiaTodayList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_top10TvShowsInIndiaTodayList);
}

@override final  bool isLoading;
@override final  bool isError;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeStateCopyWith<_HomeState> get copyWith => __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeState&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._releasedInThePastYearList, _releasedInThePastYearList)&&const DeepCollectionEquality().equals(other._trendingNowList, _trendingNowList)&&const DeepCollectionEquality().equals(other._tenseDramasList, _tenseDramasList)&&const DeepCollectionEquality().equals(other._southIndianCinemaList, _southIndianCinemaList)&&const DeepCollectionEquality().equals(other._top10TvShowsInIndiaTodayList, _top10TvShowsInIndiaTodayList)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isError, isError) || other.isError == isError));
}


@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_releasedInThePastYearList),const DeepCollectionEquality().hash(_trendingNowList),const DeepCollectionEquality().hash(_tenseDramasList),const DeepCollectionEquality().hash(_southIndianCinemaList),const DeepCollectionEquality().hash(_top10TvShowsInIndiaTodayList),isLoading,isError);

@override
String toString() {
  return 'HomeState(id: $id, releasedInThePastYearList: $releasedInThePastYearList, trendingNowList: $trendingNowList, tenseDramasList: $tenseDramasList, southIndianCinemaList: $southIndianCinemaList, top10TvShowsInIndiaTodayList: $top10TvShowsInIndiaTodayList, isLoading: $isLoading, isError: $isError)';
}


}

/// @nodoc
abstract mixin class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(_HomeState value, $Res Function(_HomeState) _then) = __$HomeStateCopyWithImpl;
@override @useResult
$Res call({
 String id, List<ComingSoonResultModel> releasedInThePastYearList, List<ComingSoonResultModel> trendingNowList, List<ComingSoonResultModel> tenseDramasList, List<ComingSoonResultModel> southIndianCinemaList, List<EveryonesWatchingResultModel> top10TvShowsInIndiaTodayList, bool isLoading, bool isError
});




}
/// @nodoc
class __$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(this._self, this._then);

  final _HomeState _self;
  final $Res Function(_HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? releasedInThePastYearList = null,Object? trendingNowList = null,Object? tenseDramasList = null,Object? southIndianCinemaList = null,Object? top10TvShowsInIndiaTodayList = null,Object? isLoading = null,Object? isError = null,}) {
  return _then(_HomeState(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,releasedInThePastYearList: null == releasedInThePastYearList ? _self._releasedInThePastYearList : releasedInThePastYearList // ignore: cast_nullable_to_non_nullable
as List<ComingSoonResultModel>,trendingNowList: null == trendingNowList ? _self._trendingNowList : trendingNowList // ignore: cast_nullable_to_non_nullable
as List<ComingSoonResultModel>,tenseDramasList: null == tenseDramasList ? _self._tenseDramasList : tenseDramasList // ignore: cast_nullable_to_non_nullable
as List<ComingSoonResultModel>,southIndianCinemaList: null == southIndianCinemaList ? _self._southIndianCinemaList : southIndianCinemaList // ignore: cast_nullable_to_non_nullable
as List<ComingSoonResultModel>,top10TvShowsInIndiaTodayList: null == top10TvShowsInIndiaTodayList ? _self._top10TvShowsInIndiaTodayList : top10TvShowsInIndiaTodayList // ignore: cast_nullable_to_non_nullable
as List<EveryonesWatchingResultModel>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
