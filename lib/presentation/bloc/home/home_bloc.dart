import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_ui/domain/core/main_failure.dart';
import 'package:netflix_ui/domain/models/new_and_hot/coming_soon_model/coming_soon_model.dart';
import 'package:netflix_ui/domain/models/new_and_hot/everyones_watching_model/everyones_watching_model.dart';
import 'package:netflix_ui/domain/usecases/coming_soon_usescase.dart';
import 'package:netflix_ui/domain/usecases/everyones_watching_usescase.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final ComingSoonUsesCase comingSoonUsesCase;
  final EveryonesWatchingUsesCase everyonesWatchingUsesCase;
  HomeBloc(this.comingSoonUsesCase, this.everyonesWatchingUsesCase)
    : super(HomeState.initial()) {
    on<HomeInitialize>((event, emit) async {
      emit(
        HomeState(
          id: DateTime.now().millisecondsSinceEpoch.toString(),
          releasedInThePastYearList: [],
          trendingNowList: [],
          tenseDramasList: [],
          southIndianCinemaList: [],
          top10TvShowsInIndiaTodayList: [],
          isLoading: true,
          isError: false,
        ),
      );

      final result = await comingSoonUsesCase.call();
      final result10 = await everyonesWatchingUsesCase.call();
      final resultState = result.fold(
        (MainFailure f) {
          return HomeState(
            id: DateTime.now().millisecondsSinceEpoch.toString(),
            releasedInThePastYearList: [],
            trendingNowList: [],
            tenseDramasList: [],
            southIndianCinemaList: [],
            top10TvShowsInIndiaTodayList: [],
            isLoading: false,
            isError: true,
          );
        },
        (ComingSoonModel list) {
          final list1 = list.results.toList()..shuffle();
          final list2 = list1.toList()..shuffle();
          final list3 = list2.toList()..shuffle();

          return HomeState(
            id: DateTime.now().millisecondsSinceEpoch.toString(),
            releasedInThePastYearList: list.results,
            trendingNowList: list1,
            tenseDramasList: list2,
            southIndianCinemaList: list3,
            top10TvShowsInIndiaTodayList: state.top10TvShowsInIndiaTodayList,
            isLoading: false,
            isError: false,
          );
        },
      );
      emit(resultState);

      final result10State = result10.fold(
        (MainFailure f) {
          return HomeState(
            id: DateTime.now().millisecondsSinceEpoch.toString(),
            releasedInThePastYearList: [],
            trendingNowList: [],
            tenseDramasList: [],
            southIndianCinemaList: [],
            top10TvShowsInIndiaTodayList: [],
            isLoading: false,
            isError: true,
          );
        },
        (EveryonesWatchingModel list) {
          return HomeState(
            id: DateTime.now().millisecondsSinceEpoch.toString(),
            releasedInThePastYearList: state.releasedInThePastYearList,
            trendingNowList: state.trendingNowList,
            tenseDramasList: state.tenseDramasList,
            southIndianCinemaList: state.southIndianCinemaList,
            top10TvShowsInIndiaTodayList: list.results,
            isLoading: false,
            isError: false,
          );
        },
      );

      emit(result10State);
    });
  }
}
