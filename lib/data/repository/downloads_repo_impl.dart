import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/data/dataSources/downloads.dart';
import 'package:netflix_clone/domain/core/main_failure.dart';
import 'package:netflix_clone/domain/models/downloads/downloads.dart';
import 'package:netflix_clone/domain/repository/downloads_repository.dart';

@LazySingleton(as: DownloadsRepository)
class DownloadsRepoImpl extends DownloadsRepository {
  final DownloadsRemoteDataSource downloadsApi;

  DownloadsRepoImpl(this.downloadsApi);
  @override
  Future<Either<MainFailure, List<DownloadsModel>>> getDownloadsImages() async {
    try {
      final response = await downloadsApi.getDownloadsApi();

      if (response.statusCode == 200) {
        final List<DownloadsModel> downloadsList =
            (response.data['results'] as List).map((e) {
              return DownloadsModel.fromJson(e);
            }).toList();
        return Right(downloadsList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
