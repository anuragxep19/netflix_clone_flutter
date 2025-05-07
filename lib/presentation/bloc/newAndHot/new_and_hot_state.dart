part of 'new_and_hot_bloc.dart';

@freezed
abstract class NewAndHotState with _$NewAndHotState {
  const factory NewAndHotState({
    required List<ComingSoonResultModel> comingSoonList,
    required List<EveryonesWatchingResultModel> everyonesWatchingList,
    required bool isLoading,
    required bool isError,
  }) = _NewAndHotState;
  factory NewAndHotState.initial() => const NewAndHotState(
    comingSoonList: [],
    everyonesWatchingList: [],
    isLoading: false,
    isError: false,
  );
}
