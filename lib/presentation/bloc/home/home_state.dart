part of 'home_bloc.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    required String id,
    required List<ComingSoonResultModel> releasedInThePastYearList,
    required List<ComingSoonResultModel> trendingNowList,
    required List<ComingSoonResultModel> tenseDramasList,
    required List<ComingSoonResultModel> southIndianCinemaList,
    required List<EveryonesWatchingResultModel> top10TvShowsInIndiaTodayList,
    required bool isLoading,
    required bool isError,
  }) = _HomeState;
  factory HomeState.initial() => const HomeState(
    releasedInThePastYearList: [],
    trendingNowList: [],
    tenseDramasList: [],
    southIndianCinemaList: [],
    top10TvShowsInIndiaTodayList: [],
    isLoading: false,
    isError: false,
    id: '0',
  );
}
