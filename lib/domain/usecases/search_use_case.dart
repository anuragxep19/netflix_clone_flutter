import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/core/main_failure.dart';
import 'package:netflix_clone/domain/models/search/search.dart';
import 'package:netflix_clone/domain/repository/search_repository.dart';

@lazySingleton
class SearchUsesCase {
  final SearchRepository searchRepository;

  SearchUsesCase(this.searchRepository);

  Future<Either<MainFailure, SearchModel>> call({
    required String movieQuery,
  }) async {
    final result = await searchRepository.getSearchResponses(
      movieQuery: movieQuery,
    );
    return result;
  }
}
