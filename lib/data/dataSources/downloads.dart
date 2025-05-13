import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/core/api.dart';

abstract class DownloadsRemoteDataSource {
  Future<Response<dynamic>> getDownloadsApi();
}

@LazySingleton(as: DownloadsRemoteDataSource)
class DownloadsRemoteDataSourceImpl extends DownloadsRemoteDataSource {
  final dio = Dio();

  @override
  Future<Response<dynamic>> getDownloadsApi() async {
    final Response response = await Dio(
      BaseOptions(),
    ).get(ApiEndPoints.downloads);
    return response;
  }
}
