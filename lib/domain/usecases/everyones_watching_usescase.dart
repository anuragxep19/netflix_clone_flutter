import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/core/main_failure.dart';
import 'package:netflix_clone/domain/models/new_and_hot/everyones_watching_model/everyones_watching_model.dart';
import 'package:netflix_clone/domain/repository/new_and_hot_repository.dart';

@lazySingleton
class EveryonesWatchingUsesCase {
  final NewAndHotRepository newAndHotRepository;

  EveryonesWatchingUsesCase({required this.newAndHotRepository});

  Future<Either<MainFailure, EveryonesWatchingModel>> call() async {
    final result = await newAndHotRepository.getEveryonesWatching();
    return result;
  }
}
