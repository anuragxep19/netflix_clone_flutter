import 'package:dartz/dartz.dart';
import 'package:netflix_clone/domain/core/main_failure.dart';
import 'package:netflix_clone/domain/models/downloads/downloads.dart';

abstract class DownloadsRepository {
  Future<Either<MainFailure, List<DownloadsModel>>> getDownloadsImages();
}
