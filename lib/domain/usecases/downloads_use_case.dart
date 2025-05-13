import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/core/main_failure.dart';
import 'package:netflix_clone/domain/models/downloads/downloads.dart';
import 'package:netflix_clone/domain/repository/downloads_repository.dart';

@lazySingleton
class DownloadsUseCase {
  final DownloadsRepository repository;

  DownloadsUseCase(this.repository);

  Future<Either<MainFailure, List<DownloadsModel>>> call() async {
    final result = await repository.getDownloadsImages();
    return result;
  }
}
