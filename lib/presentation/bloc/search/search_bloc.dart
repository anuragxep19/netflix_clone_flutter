import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/core/main_failure.dart';
import 'package:netflix_clone/domain/models/downloads/downloads.dart';
import 'package:netflix_clone/domain/models/search/search.dart';
import 'package:netflix_clone/domain/usecases/downloads_use_case.dart';
import 'package:netflix_clone/domain/usecases/search_use_case.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final DownloadsUseCase downloadsUseCase;
  final SearchUsesCase searchUsesCase;
  SearchBloc(this.downloadsUseCase, this.searchUsesCase)
    : super(SearchState.initial()) {
    on<SearchInitialize>((event, emit) async {
      emit(
        const SearchState(
          idleList: [],
          searchResultList: [],
          isLoading: true,
          isError: false,
        ),
      );
      final result = await downloadsUseCase.call();
      final state = result.fold(
        (MainFailure f) {
          return const SearchState(
            idleList: [],
            searchResultList: [],
            isLoading: false,
            isError: true,
          );
        },
        (List<DownloadsModel> list) {
          return SearchState(
            idleList: list,
            searchResultList: [],
            isLoading: false,
            isError: false,
          );
        },
      );
      emit(state);
    });
    on<SearchMovie>((event, emit) async {
      emit(
        const SearchState(
          idleList: [],
          searchResultList: [],
          isLoading: true,
          isError: false,
        ),
      );
      final result = await searchUsesCase.call(movieQuery: event.movieQuery);
      final state = result.fold(
        (MainFailure f) {
          return const SearchState(
            idleList: [],
            searchResultList: [],
            isLoading: false,
            isError: true,
          );
        },
        (SearchModel r) {
          return SearchState(
            idleList: [],
            searchResultList: r.results,
            isLoading: false,
            isError: false,
          );
        },
      );
      emit(state);
    });
  }
}
