import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:netflix_ui/core/constants.dart';
import 'package:netflix_ui/core/strings.dart';
import 'package:netflix_ui/presentation/bloc/newAndHot/new_and_hot_bloc.dart';
import 'package:netflix_ui/presentation/pages/new&Hot/widgets/app_bar_widget.dart';
import 'package:netflix_ui/presentation/pages/new&Hot/widgets/coming_soon.dart';
import 'package:netflix_ui/presentation/pages/new&Hot/widgets/everyones_watching.dart';

/// Main Tab Page: New & Hot section
class NewAndHotPage extends StatefulWidget {
  const NewAndHotPage({super.key});

  @override
  State<NewAndHotPage> createState() => _NewAndHotPageState();
}

class _NewAndHotPageState extends State<NewAndHotPage> {
  @override
  void initState() {
    super.initState();
    context.read<NewAndHotBloc>().add(const NewAndHotInitialize());
  }

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 2,
      child: Scaffold(
        // Custom AppBar with TabBar inside
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: AppBarWidget(),
        ),

        // Two tab views: Coming Soon & Everyone's Watching
        body: TabBarView(
          children: [ComingSoonWidget(), EveryonesWatchingWidget()],
        ),
      ),
    );
  }
}

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewAndHotBloc, NewAndHotState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state.isError) {
          return const Center(child: Text('Error Loading Data'));
        } else if (state.comingSoonList.isEmpty) {
          return const Center(child: Text('List is Empty'));
        }

        // list of Coming Soon movies
        return ListView.separated(
          itemBuilder: (context, index) {
            final movie = state.comingSoonList[index];
            final date = movie.releaseDate ?? '';
            final month =
                date.isNotEmpty
                    ? DateFormat.LLL().format(DateTime.parse(date))
                    : 'N/A';
            final day = date.isNotEmpty ? date.split('-')[2] : '--';

            return ComingSoon(
              month: month,
              date: day,
              image: '$imageBaseUrl${movie.backdropPath}',
              title: movie.originalTitle ?? 'No title',
              description: movie.overview ?? 'No description',
            );
          },
          separatorBuilder: (context, index) => constHeight50,
          itemCount: state.comingSoonList.length,
        );
      },
    );
  }
}

class EveryonesWatchingWidget extends StatelessWidget {
  const EveryonesWatchingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // Trigger loading when widget is built
    BlocProvider.of<NewAndHotBloc>(context).add(const EveryonesWatchingLoad());

    return RefreshIndicator(
      onRefresh: () async {
        BlocProvider.of<NewAndHotBloc>(
          context,
        ).add(const EveryonesWatchingLoad());
      },

      child: BlocBuilder<NewAndHotBloc, NewAndHotState>(
        buildWhen:
            (previous, current) => previous.everyonesWatchingList.isEmpty,

        builder: (context, state) {
          if (state.isLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state.isError) {
            return const Center(child: Text('Error Loading Data'));
          } else if (state.everyonesWatchingList.isEmpty) {
            return const Center(child: Text('List is Empty'));
          }

          // list of shows/movies everyone is watching
          return ListView.separated(
            itemBuilder: (context, index) {
              final movie = state.everyonesWatchingList[index];

              return EveryonesWatching(
                image: '$imageBaseUrl${movie.backdropPath}',
                title: movie.originalName ?? 'No title',
                description: movie.overview ?? 'No description',
              );
            },
            separatorBuilder: (context, index) => constHeight50,
            itemCount: state.everyonesWatchingList.length,
          );
        },
      ),
    );
  }
}
