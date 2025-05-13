import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/core/main_failure.dart';
import 'package:netflix_clone/domain/models/new_and_hot/coming_soon_model/coming_soon_model.dart';
import 'package:netflix_clone/domain/models/new_and_hot/everyones_watching_model/everyones_watching_model.dart';
import 'package:netflix_clone/domain/usecases/coming_soon_usescase.dart';
import 'package:netflix_clone/domain/usecases/everyones_watching_usescase.dart';

part 'new_and_hot_event.dart';
part 'new_and_hot_state.dart';
part 'new_and_hot_bloc.freezed.dart';

@injectable
class NewAndHotBloc extends Bloc<NewAndHotEvent, NewAndHotState> {
  final ComingSoonUsesCase comingSoonUsesCase;
  final EveryonesWatchingUsesCase everyonesWatchingUsesCase;
  NewAndHotBloc(this.comingSoonUsesCase, this.everyonesWatchingUsesCase)
    : super(NewAndHotState.initial()) {
    on<NewAndHotInitialize>((event, emit) async {
      emit(
        const NewAndHotState(
          comingSoonList: [],
          everyonesWatchingList: [],
          isLoading: true,
          isError: false,
        ),
      );
      final result = await comingSoonUsesCase.call();
      final resultState = result.fold(
        (MainFailure f) {
          return const NewAndHotState(
            comingSoonList: [],
            everyonesWatchingList: [],
            isLoading: false,
            isError: true,
          );
        },
        (ComingSoonModel list) {
          return NewAndHotState(
            comingSoonList: list.results,
            everyonesWatchingList: state.everyonesWatchingList,
            isLoading: false,
            isError: false,
          );
        },
      );

      emit(resultState);
    });
    on<EveryonesWatchingLoad>((event, emit) async {
      emit(
        NewAndHotState(
          comingSoonList: state.comingSoonList,
          everyonesWatchingList: [],
          isLoading: true,
          isError: false,
        ),
      );
      final result = await everyonesWatchingUsesCase.call();
      final resultState = result.fold(
        (MainFailure f) {
          return const NewAndHotState(
            comingSoonList: [],
            everyonesWatchingList: [],
            isLoading: false,
            isError: true,
          );
        },
        (EveryonesWatchingModel list) {
          return NewAndHotState(
            comingSoonList: state.comingSoonList,
            everyonesWatchingList: list.results,
            isLoading: false,
            isError: false,
          );
        },
      );
      emit(resultState);
    });
  }
}
