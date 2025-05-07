import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_ui/domain/core/main_failure.dart';
import 'package:netflix_ui/domain/models/downloads/downloads.dart';
import 'package:netflix_ui/domain/usecases/downloads_use_case.dart';

part 'fast_laugh_event.dart';
part 'fast_laugh_state.dart';
part 'fast_laugh_bloc.freezed.dart';

final videos = [
  'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
  'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4',
  'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4',
];

@injectable
class FastLaughBloc extends Bloc<FastLaughEvent, FastLaughState> {
  final DownloadsUseCase downloadsUseCase;
  FastLaughBloc(this.downloadsUseCase) : super(FastLaughState.initial()) {
    on<FastLaughInitialize>((event, emit) async {
      emit(
        const FastLaughState(videoList: [], isLoading: true, isError: false),
      );
      final result = await downloadsUseCase.call();
      final state = result.fold(
        (MainFailure f) {
          return const FastLaughState(
            videoList: [],
            isLoading: false,
            isError: true,
          );
        },
        (List<DownloadsModel> list) {
          return FastLaughState(
            videoList: list,
            isLoading: false,
            isError: false,
          );
        },
      );
      emit(state);
    });
  }
}
