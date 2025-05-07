import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_ui/domain/core/di/injectable.dart';
import 'package:netflix_ui/presentation/bloc/home/home_bloc.dart';
import 'package:netflix_ui/presentation/bloc/downloads/downloads_bloc.dart';
import 'package:netflix_ui/presentation/bloc/fastLaugh/fast_laugh_bloc.dart';
import 'package:netflix_ui/presentation/bloc/newAndHot/new_and_hot_bloc.dart';
import 'package:netflix_ui/presentation/bloc/search/search_bloc.dart';
import 'package:netflix_ui/presentation/pages/mainPage/main_page.dart';

Future<void> main() async {
  // Ensures binding is initialized before executing async code
  WidgetsFlutterBinding.ensureInitialized();
  // Set up dependency injection
  configureInjection();

  // Start the app
  runApp(const Netflix());
}

class Netflix extends StatelessWidget {
  const Netflix({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // Downloads BLoC
        BlocProvider(
          create:
              (context) =>
                  getIt<DownloadsBloc>()..add(const GetDownloadsImage()),
        ),
        // Search BLoC
        BlocProvider(
          create:
              (context) => getIt<SearchBloc>()..add(const SearchInitialize()),
        ),
        // Fast Laugh BLoC
        BlocProvider(
          create:
              (context) =>
                  getIt<FastLaughBloc>()..add(const FastLaughInitialize()),
        ),
        // New & Hot BLoC
        BlocProvider(
          create:
              (context) =>
                  getIt<NewAndHotBloc>()..add(const NewAndHotInitialize()),
        ),
        // Home BLoC
        BlocProvider(
          create: (context) => getIt<HomeBloc>()..add(const HomeInitialize()),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Netflix_ui',
        theme: ThemeData.dark(),
        home: const MainPage(), // Entry screen
      ),
    );
  }
}
