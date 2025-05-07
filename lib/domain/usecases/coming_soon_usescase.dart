import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_ui/domain/core/main_failure.dart';
import 'package:netflix_ui/domain/models/new_and_hot/coming_soon_model/coming_soon_model.dart';
import 'package:netflix_ui/domain/repository/new_and_hot_repository.dart';

@lazySingleton
class ComingSoonUsesCase {
  final NewAndHotRepository newAndHotRepository;

  ComingSoonUsesCase({required this.newAndHotRepository});

  Future<Either<MainFailure, ComingSoonModel>> call() async {
    final result = await newAndHotRepository.getComingSoon();
    return result;
  }
}
