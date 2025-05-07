part of 'search_bloc.dart';

@freezed
abstract class SearchState with _$SearchState {
  const factory SearchState({
    required List<DownloadsModel> idleList,
    required List<SearchResultModel> searchResultList,
    required bool isLoading,
    required bool isError,
  }) = _SearchState;
  factory SearchState.initial() => const SearchState(
    idleList: [],
    searchResultList: [],
    isLoading: false,
    isError: false,
  );
}
