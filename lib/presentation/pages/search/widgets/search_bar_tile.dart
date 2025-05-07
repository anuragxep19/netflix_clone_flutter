import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_ui/domain/core/debounce.dart';
import 'package:netflix_ui/presentation/bloc/search/search_bloc.dart';
import 'package:netflix_ui/presentation/pages/search/constants.dart';

// Notifier to track if the search bar is tapped
final searchBarTapNotifier = ValueNotifier(false);

class SearchBarTile extends StatelessWidget {
  SearchBarTile({super.key});

  // Debounce instance to prevent spamming search requests
  final debounce = Debounce(milliseconds: 1000);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: searchBarTapNotifier,
      builder: (context, isTapped, _) {
        // Adjust padding based on tap status
        final padding = isTapped ? searchBar : idleBar;

        return CupertinoSearchTextField(
          prefixIcon: const Icon(CupertinoIcons.search),
          prefixInsets: padding,
          suffixIcon: const Icon(CupertinoIcons.xmark_circle_fill),
          style: const TextStyle(color: Colors.white),

          // When search field is tapped
          onTap: () => searchBarTapNotifier.value = true,

          // Handle input changes with debounce
          onChanged: (query) {
            if (query.isNotEmpty) {
              // Debounce the search action
              debounce.run(() {
                BlocProvider.of<SearchBloc>(
                  context,
                ).add(SearchMovie(movieQuery: query));
              });
            } else {
              // If input is cleared, reset search state
              debounce.dispose();
              BlocProvider.of<SearchBloc>(
                context,
              ).add(const SearchInitialize());
            }
          },
        );
      },
    );
  }
}
