import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/core/strings.dart';
import 'package:netflix_clone/presentation/bloc/search/search_bloc.dart';
import 'package:netflix_clone/presentation/pages/search/widgets/heading.dart';
import 'package:netflix_clone/presentation/pages/search/widgets/idle_item.dart';

class IdleList extends StatelessWidget {
  const IdleList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Heading for the list
        const Padding(
          padding: EdgeInsets.all(10.0),
          child: Heading(title: 'Top Searches'),
        ),

        // Main list content
        Expanded(
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              // Show loading spinner while fetching data
              if (state.isLoading) {
                return const Center(child: CircularProgressIndicator());
              }

              // Show error message if something went wrong
              if (state.isError) {
                return const Center(child: Text('Error Loading Data'));
              }

              // Show message if the list is empty
              if (state.idleList.isEmpty) {
                return const Center(child: Text('List is Empty'));
              }

              // Show the list of idle search items
              return ListView.separated(
                itemCount: state.idleList.length,
                separatorBuilder: (context, index) => constHeight10,
                itemBuilder: (context, index) {
                  final movie = state.idleList[index];

                  return IdleItem(
                    image: '$imageBaseUrl${movie.backdropPath}',
                    title: movie.title ?? 'No Title',
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
