import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_ui/presentation/bloc/search/search_bloc.dart';
import 'package:netflix_ui/presentation/pages/search/widgets/idle_list.dart';
import 'package:netflix_ui/presentation/pages/search/widgets/result_grid.dart';
import 'package:netflix_ui/presentation/pages/search/widgets/search_bar_tile.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            // Search input field
            SearchBarTile(),

            // Main content area
            Expanded(
              child: BlocBuilder<SearchBloc, SearchState>(
                builder: (context, state) {
                  // Show result grid if there are search results
                  if (state.searchResultList.isNotEmpty) {
                    return const ResultGrid();
                  }

                  // If no search results, show idle list (Top Searches)j
                  return const IdleList();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
