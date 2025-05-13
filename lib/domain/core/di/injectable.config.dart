// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:netflix_clone/data/dataSources/downloads.dart' as _i99;
import 'package:netflix_clone/data/dataSources/new_and_hot.dart' as _i708;
import 'package:netflix_clone/data/dataSources/search.dart' as _i388;
import 'package:netflix_clone/data/repository/downloads_repo_impl.dart' as _i807;
import 'package:netflix_clone/data/repository/new_and_hot_repository_impl.dart'
    as _i390;
import 'package:netflix_clone/data/repository/search_repo.impl.dart' as _i323;
import 'package:netflix_clone/domain/repository/downloads_repository.dart'
    as _i920;
import 'package:netflix_clone/domain/repository/new_and_hot_repository.dart'
    as _i543;
import 'package:netflix_clone/domain/repository/search_repository.dart' as _i86;
import 'package:netflix_clone/domain/usecases/coming_soon_usescase.dart' as _i626;
import 'package:netflix_clone/domain/usecases/downloads_use_case.dart' as _i403;
import 'package:netflix_clone/domain/usecases/everyones_watching_usescase.dart'
    as _i750;
import 'package:netflix_clone/domain/usecases/search_use_case.dart' as _i55;
import 'package:netflix_clone/presentation/bloc/downloads/downloads_bloc.dart'
    as _i693;
import 'package:netflix_clone/presentation/bloc/fastLaugh/fast_laugh_bloc.dart'
    as _i704;
import 'package:netflix_clone/presentation/bloc/home/home_bloc.dart' as _i937;
import 'package:netflix_clone/presentation/bloc/newAndHot/new_and_hot_bloc.dart'
    as _i843;
import 'package:netflix_clone/presentation/bloc/search/search_bloc.dart' as _i424;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i388.SearchRemoteDataSource>(
      () => _i388.SearchRemoteDataSourceImpl(),
    );
    gh.lazySingleton<_i99.DownloadsRemoteDataSource>(
      () => _i99.DownloadsRemoteDataSourceImpl(),
    );
    gh.lazySingleton<_i86.SearchRepository>(
      () => _i323.SearchRepositoryImpl(
        searchRemoteDataSource: gh<_i388.SearchRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i55.SearchUsesCase>(
      () => _i55.SearchUsesCase(gh<_i86.SearchRepository>()),
    );
    gh.lazySingleton<_i708.NewAndHotRemoteDataSource>(
      () => _i708.NewAndHotRemoteDataSourceImpl(),
    );
    gh.lazySingleton<_i920.DownloadsRepository>(
      () => _i807.DownloadsRepoImpl(gh<_i99.DownloadsRemoteDataSource>()),
    );
    gh.lazySingleton<_i543.NewAndHotRepository>(
      () => _i390.NewAndHotRepositoryImpl(
        newAndHotRemoteDataSource: gh<_i708.NewAndHotRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i403.DownloadsUseCase>(
      () => _i403.DownloadsUseCase(gh<_i920.DownloadsRepository>()),
    );
    gh.lazySingleton<_i626.ComingSoonUsesCase>(
      () => _i626.ComingSoonUsesCase(
        newAndHotRepository: gh<_i543.NewAndHotRepository>(),
      ),
    );
    gh.lazySingleton<_i750.EveryonesWatchingUsesCase>(
      () => _i750.EveryonesWatchingUsesCase(
        newAndHotRepository: gh<_i543.NewAndHotRepository>(),
      ),
    );
    gh.factory<_i424.SearchBloc>(
      () => _i424.SearchBloc(
        gh<_i403.DownloadsUseCase>(),
        gh<_i55.SearchUsesCase>(),
      ),
    );
    gh.factory<_i937.HomeBloc>(
      () => _i937.HomeBloc(
        gh<_i626.ComingSoonUsesCase>(),
        gh<_i750.EveryonesWatchingUsesCase>(),
      ),
    );
    gh.factory<_i843.NewAndHotBloc>(
      () => _i843.NewAndHotBloc(
        gh<_i626.ComingSoonUsesCase>(),
        gh<_i750.EveryonesWatchingUsesCase>(),
      ),
    );
    gh.factory<_i693.DownloadsBloc>(
      () => _i693.DownloadsBloc(gh<_i403.DownloadsUseCase>()),
    );
    gh.factory<_i704.FastLaughBloc>(
      () => _i704.FastLaughBloc(gh<_i403.DownloadsUseCase>()),
    );
    return this;
  }
}
