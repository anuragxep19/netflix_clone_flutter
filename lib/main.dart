import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:netflix_clone/domain/core/di/injectable.dart';
import 'package:netflix_clone/presentation/bloc/home/home_bloc.dart';
import 'package:netflix_clone/presentation/bloc/downloads/downloads_bloc.dart';
import 'package:netflix_clone/presentation/bloc/fastLaugh/fast_laugh_bloc.dart';
import 'package:netflix_clone/presentation/bloc/newAndHot/new_and_hot_bloc.dart';
import 'package:netflix_clone/presentation/bloc/search/search_bloc.dart';
import 'package:netflix_clone/presentation/pages/mainPage/main_page.dart';

Future<void> main() async {
  // Ensures binding is initialized before executing async code
  WidgetsFlutterBinding.ensureInitialized();
  // Set up dependency injection
  configureInjection();

  await dotenv.load(fileName: ".env");

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
        BlocProvider(create: (context) => getIt<DownloadsBloc>()),
        // Search BLoC
        BlocProvider(create: (context) => getIt<SearchBloc>()),
        // Fast Laugh BLoC
        BlocProvider(create: (context) => getIt<FastLaughBloc>()),
        // New & Hot BLoC
        BlocProvider(create: (context) => getIt<NewAndHotBloc>()),
        // Home BLoC
        BlocProvider(create: (context) => getIt<HomeBloc>()),
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
