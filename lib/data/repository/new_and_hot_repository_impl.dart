import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_ui/data/dataSources/new_and_hot.dart';
import 'package:netflix_ui/domain/core/main_failure.dart';
import 'package:netflix_ui/domain/models/new_and_hot/coming_soon_model/coming_soon_model.dart';
import 'package:netflix_ui/domain/models/new_and_hot/everyones_watching_model/everyones_watching_model.dart';
import 'package:netflix_ui/domain/repository/new_and_hot_repository.dart';

@LazySingleton(as: NewAndHotRepository)
class NewAndHotRepositoryImpl extends NewAndHotRepository {
  final NewAndHotRemoteDataSource newAndHotRemoteDataSource;

  NewAndHotRepositoryImpl({required this.newAndHotRemoteDataSource});

  @override
  Future<Either<MainFailure, ComingSoonModel>> getComingSoon() async {
    try {
      final response = await newAndHotRemoteDataSource.getComingSoonApi();
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = ComingSoonModel.fromJson(response.data);
        return Right(result);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (_) {
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, EveryonesWatchingModel>>
  getEveryonesWatching() async {
    try {
      final response =
          await newAndHotRemoteDataSource.getEveryonesWatchingApi();
      if (response.statusCode == 200) {
        final result = EveryonesWatchingModel.fromJson(response.data);
        return Right(result);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (_) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
