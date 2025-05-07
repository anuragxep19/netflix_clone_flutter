import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_ui/domain/core/main_failure.dart';
import 'package:netflix_ui/domain/models/downloads/downloads.dart';
import 'package:netflix_ui/domain/usecases/downloads_use_case.dart';
part 'downloads_event.dart';
part 'downloads_state.dart';
part 'downloads_bloc.freezed.dart';

@injectable
class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  final DownloadsUseCase downloadsUseCase;
  DownloadsBloc(this.downloadsUseCase) : super(DownloadsState.initial()) {
    on<GetDownloadsImage>((event, emit) async {
      emit(state.copyWith(isLoading: true, downloadsOption: none()));

      final Either<MainFailure, List<DownloadsModel>> downloadsOption =
          await downloadsUseCase.call();

      emit(
        downloadsOption.fold(
          (failure) => state.copyWith(
            isLoading: false,
            downloadsOption: some(Left(failure)),
          ),
          (success) => state.copyWith(
            isLoading: false,
            downloadsOption: some(Right(success)),
            downloadsImages: success.toList(),
          ),
        ),
      );
    });
  }
}
