part of 'fast_laugh_bloc.dart';

@freezed
abstract class FastLaughState with _$FastLaughState {
  const factory FastLaughState({
    required final List<DownloadsModel> videoList,
    required final bool isLoading,
    required final bool isError,
  }) = _FastLaughState;
  factory FastLaughState.initial() =>
      const FastLaughState(videoList: [], isLoading: false, isError: false);
}
