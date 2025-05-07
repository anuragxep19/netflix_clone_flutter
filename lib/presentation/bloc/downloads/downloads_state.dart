part of 'downloads_bloc.dart';

@freezed
abstract class DownloadsState with _$DownloadsState {
  const factory DownloadsState({
    required bool isLoading,
    required List<DownloadsModel> downloadsImages,
    required Option<Either<MainFailure, List<DownloadsModel>>> downloadsOption,
  }) = _DownloadState;

  factory DownloadsState.initial() {
    return const DownloadsState(
      isLoading: true,
      downloadsOption: None(),
      downloadsImages: [],
    );
  }
}
