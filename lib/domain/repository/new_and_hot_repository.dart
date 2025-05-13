import 'package:dartz/dartz.dart';
import 'package:netflix_clone/domain/core/main_failure.dart';
import 'package:netflix_clone/domain/models/new_and_hot/coming_soon_model/coming_soon_model.dart';
import 'package:netflix_clone/domain/models/new_and_hot/everyones_watching_model/everyones_watching_model.dart';

abstract class NewAndHotRepository {
  Future<Either<MainFailure, ComingSoonModel>> getComingSoon();
  Future<Either<MainFailure, EveryonesWatchingModel>> getEveryonesWatching();
}
