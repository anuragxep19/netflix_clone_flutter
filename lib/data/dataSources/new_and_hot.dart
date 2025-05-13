import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/core/api.dart';

abstract class NewAndHotRemoteDataSource {
  Future<Response<dynamic>> getComingSoonApi();
  Future<Response<dynamic>> getEveryonesWatchingApi();
}

@LazySingleton(as: NewAndHotRemoteDataSource)
class NewAndHotRemoteDataSourceImpl extends NewAndHotRemoteDataSource {
  @override
  Future<Response<dynamic>> getComingSoonApi() async {
    final Response response = await Dio(
      BaseOptions(),
    ).get(ApiEndPoints.comingSoon);
    return response;
  }

  @override
  Future<Response<dynamic>> getEveryonesWatchingApi() async {
    final Response response = await Dio(
      BaseOptions(),
    ).get(ApiEndPoints.everyonesWatching);

    return response;
  }
}
