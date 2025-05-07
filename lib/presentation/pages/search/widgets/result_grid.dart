import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_ui/core/constants.dart';
import 'package:netflix_ui/core/strings.dart';
import 'package:netflix_ui/presentation/bloc/search/search_bloc.dart';
import 'package:netflix_ui/presentation/pages/search/widgets/heading.dart';
import 'package:netflix_ui/presentation/pages/search/widgets/result_item.dart';

class ResultGrid extends StatelessWidget {
  const ResultGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        constHeight10, // Spacing
        const Heading(title: 'Movies & TV'), // Section heading
        constHeight10, // Spacing again
        // Expanded so GridView takes up remaining vertical space
        Expanded(
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              final results = state.searchResultList;

              return GridView.builder(
                itemCount: results.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // 3 columns
                  childAspectRatio: 2 / 3, // Poster ratio
                  crossAxisSpacing: 10, // Horizontal space
                  mainAxisSpacing: 10, // Vertical space
                ),
                itemBuilder: (context, index) {
                  final movie = results[index];
                  return ResultItem(
                    image: '$imageBaseUrl${movie.posterPath}', // Full image URL
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
