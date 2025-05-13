import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/data/dataSources/search.dart';
import 'package:netflix_clone/domain/core/main_failure.dart';
import 'package:netflix_clone/domain/models/search/search.dart';
import 'package:netflix_clone/domain/repository/search_repository.dart';

@LazySingleton(as: SearchRepository)
class SearchRepositoryImpl extends SearchRepository {
  final SearchRemoteDataSource searchRemoteDataSource;

  SearchRepositoryImpl({required this.searchRemoteDataSource});

  @override
  Future<Either<MainFailure, SearchModel>> getSearchResponses({
    required String movieQuery,
  }) async {
    try {
      final response = await searchRemoteDataSource.getSearchApi(
        movieQuery: movieQuery,
      );
      if (response.statusCode == 200) {
        final searchResult = SearchModel.fromJson(response.data);
        return Right(searchResult);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (_) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
