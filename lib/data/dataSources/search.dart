import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_ui/domain/core/api.dart';

abstract class SearchRemoteDataSource {
  Future<Response<dynamic>> getSearchApi({required String movieQuery});
}

@LazySingleton(as: SearchRemoteDataSource)
class SearchRemoteDataSourceImpl extends SearchRemoteDataSource {
  @override
  Future<Response> getSearchApi({required String movieQuery}) async {
    final Response response = await Dio(
      BaseOptions(),
    ).get(ApiEndPoints.search, queryParameters: {'query': movieQuery});
    return response;
  }
}
