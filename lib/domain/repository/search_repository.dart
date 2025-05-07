import 'package:dartz/dartz.dart';
import 'package:netflix_ui/domain/core/main_failure.dart';
import 'package:netflix_ui/domain/models/search/search.dart';

abstract class SearchRepository {
  Future<Either<MainFailure, SearchModel>> getSearchResponses({
    required String movieQuery,
  });
}
