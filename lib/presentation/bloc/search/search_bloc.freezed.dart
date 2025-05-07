// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchEvent()';
}


}

/// @nodoc
class $SearchEventCopyWith<$Res>  {
$SearchEventCopyWith(SearchEvent _, $Res Function(SearchEvent) __);
}


/// @nodoc


class SearchInitialize implements SearchEvent {
  const SearchInitialize();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchInitialize);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchEvent.initialize()';
}


}




/// @nodoc


class SearchMovie implements SearchEvent {
  const SearchMovie({required this.movieQuery});
  

 final  String movieQuery;

/// Create a copy of SearchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchMovieCopyWith<SearchMovie> get copyWith => _$SearchMovieCopyWithImpl<SearchMovie>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchMovie&&(identical(other.movieQuery, movieQuery) || other.movieQuery == movieQuery));
}


@override
int get hashCode => Object.hash(runtimeType,movieQuery);

@override
String toString() {
  return 'SearchEvent.searchMovie(movieQuery: $movieQuery)';
}


}

/// @nodoc
abstract mixin class $SearchMovieCopyWith<$Res> implements $SearchEventCopyWith<$Res> {
  factory $SearchMovieCopyWith(SearchMovie value, $Res Function(SearchMovie) _then) = _$SearchMovieCopyWithImpl;
@useResult
$Res call({
 String movieQuery
});




}
/// @nodoc
class _$SearchMovieCopyWithImpl<$Res>
    implements $SearchMovieCopyWith<$Res> {
  _$SearchMovieCopyWithImpl(this._self, this._then);

  final SearchMovie _self;
  final $Res Function(SearchMovie) _then;

/// Create a copy of SearchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? movieQuery = null,}) {
  return _then(SearchMovie(
movieQuery: null == movieQuery ? _self.movieQuery : movieQuery // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$SearchState {

 List<DownloadsModel> get idleList; List<SearchResultModel> get searchResultList; bool get isLoading; bool get isError;
/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchStateCopyWith<SearchState> get copyWith => _$SearchStateCopyWithImpl<SearchState>(this as SearchState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchState&&const DeepCollectionEquality().equals(other.idleList, idleList)&&const DeepCollectionEquality().equals(other.searchResultList, searchResultList)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isError, isError) || other.isError == isError));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(idleList),const DeepCollectionEquality().hash(searchResultList),isLoading,isError);

@override
String toString() {
  return 'SearchState(idleList: $idleList, searchResultList: $searchResultList, isLoading: $isLoading, isError: $isError)';
}


}

/// @nodoc
abstract mixin class $SearchStateCopyWith<$Res>  {
  factory $SearchStateCopyWith(SearchState value, $Res Function(SearchState) _then) = _$SearchStateCopyWithImpl;
@useResult
$Res call({
 List<DownloadsModel> idleList, List<SearchResultModel> searchResultList, bool isLoading, bool isError
});




}
/// @nodoc
class _$SearchStateCopyWithImpl<$Res>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._self, this._then);

  final SearchState _self;
  final $Res Function(SearchState) _then;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idleList = null,Object? searchResultList = null,Object? isLoading = null,Object? isError = null,}) {
  return _then(_self.copyWith(
idleList: null == idleList ? _self.idleList : idleList // ignore: cast_nullable_to_non_nullable
as List<DownloadsModel>,searchResultList: null == searchResultList ? _self.searchResultList : searchResultList // ignore: cast_nullable_to_non_nullable
as List<SearchResultModel>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc


class _SearchState implements SearchState {
  const _SearchState({required final  List<DownloadsModel> idleList, required final  List<SearchResultModel> searchResultList, required this.isLoading, required this.isError}): _idleList = idleList,_searchResultList = searchResultList;
  

 final  List<DownloadsModel> _idleList;
@override List<DownloadsModel> get idleList {
  if (_idleList is EqualUnmodifiableListView) return _idleList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_idleList);
}

 final  List<SearchResultModel> _searchResultList;
@override List<SearchResultModel> get searchResultList {
  if (_searchResultList is EqualUnmodifiableListView) return _searchResultList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_searchResultList);
}

@override final  bool isLoading;
@override final  bool isError;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchStateCopyWith<_SearchState> get copyWith => __$SearchStateCopyWithImpl<_SearchState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchState&&const DeepCollectionEquality().equals(other._idleList, _idleList)&&const DeepCollectionEquality().equals(other._searchResultList, _searchResultList)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isError, isError) || other.isError == isError));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_idleList),const DeepCollectionEquality().hash(_searchResultList),isLoading,isError);

@override
String toString() {
  return 'SearchState(idleList: $idleList, searchResultList: $searchResultList, isLoading: $isLoading, isError: $isError)';
}


}

/// @nodoc
abstract mixin class _$SearchStateCopyWith<$Res> implements $SearchStateCopyWith<$Res> {
  factory _$SearchStateCopyWith(_SearchState value, $Res Function(_SearchState) _then) = __$SearchStateCopyWithImpl;
@override @useResult
$Res call({
 List<DownloadsModel> idleList, List<SearchResultModel> searchResultList, bool isLoading, bool isError
});




}
/// @nodoc
class __$SearchStateCopyWithImpl<$Res>
    implements _$SearchStateCopyWith<$Res> {
  __$SearchStateCopyWithImpl(this._self, this._then);

  final _SearchState _self;
  final $Res Function(_SearchState) _then;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idleList = null,Object? searchResultList = null,Object? isLoading = null,Object? isError = null,}) {
  return _then(_SearchState(
idleList: null == idleList ? _self._idleList : idleList // ignore: cast_nullable_to_non_nullable
as List<DownloadsModel>,searchResultList: null == searchResultList ? _self._searchResultList : searchResultList // ignore: cast_nullable_to_non_nullable
as List<SearchResultModel>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
