import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/presentation/bloc/search/search_bloc.dart';
import 'package:netflix_clone/presentation/pages/search/widgets/idle_list.dart';
import 'package:netflix_clone/presentation/pages/search/widgets/result_grid.dart';
import 'package:netflix_clone/presentation/pages/search/widgets/search_bar_tile.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;
  @override
  void initState() {
    super.initState();
    context.read<SearchBloc>().add(const SearchInitialize());
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
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
