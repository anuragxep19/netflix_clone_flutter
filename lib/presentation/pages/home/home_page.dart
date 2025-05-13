import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/bloc/home/home_bloc.dart';
import 'package:netflix_clone/presentation/pages/home/widgets/app_bar_home.dart';
import 'package:netflix_clone/presentation/pages/home/widgets/horizontal_scrolling_card.dart';
import 'package:netflix_clone/presentation/pages/home/widgets/large_card.dart';
import 'package:netflix_clone/presentation/pages/home/widgets/numbered_horizontal_scrolling_card.dart';

ValueNotifier<bool> scrollDirectionNotifier = ValueNotifier(true);
bool refresh = true;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    super.initState();
    context.read<HomeBloc>().add(const HomeInitialize());
  }

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return RefreshIndicator(
      // Pull-to-refresh triggers event and sets refresh flag
      onRefresh: () async {
        refresh = true;
        BlocProvider.of<HomeBloc>(context).add(const HomeInitialize());
      },
      child: Scaffold(
        extendBodyBehindAppBar: true,
        body: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state.isError) {
              return const Center(child: Text('Error Loading Data'));
            } else if (state.southIndianCinemaList.isEmpty &&
                state.top10TvShowsInIndiaTodayList.isEmpty) {
              return const Center(child: Text('List is Empty'));
            } else {
              return NotificationListener<UserScrollNotification>(
                // Listen for scroll direction to show/hide AppBar
                onNotification: (notification) {
                  final ScrollDirection direction = notification.direction;
                  if (direction == ScrollDirection.forward) {
                    scrollDirectionNotifier.value = true;
                  } else if (direction == ScrollDirection.reverse) {
                    scrollDirectionNotifier.value = false;
                  }
                  return true;
                },
                child: ValueListenableBuilder(
                  valueListenable: scrollDirectionNotifier,
                  builder: (context, value, child) {
                    return Stack(
                      children: [
                        ListView(
                          children: [
                            // Check index bounds for safety
                            LargeCard(
                              image:
                                  state.top10TvShowsInIndiaTodayList.length > 18
                                      ? state
                                              .top10TvShowsInIndiaTodayList[18]
                                              .posterPath ??
                                          ''
                                      : '',
                            ),
                            constHeight(10),
                            HorizontalScrollingCard(
                              title: 'Released in the Past Year',
                              imageList: state.releasedInThePastYearList,
                            ),
                            constHeight(10),
                            HorizontalScrollingCard(
                              title: 'Trending Now',
                              imageList: state.trendingNowList,
                            ),
                            constHeight(10),
                            NumberedHorizontalScrollingCard(
                              title: 'Top 10 TV Shows in India Today',
                              imageList: state.top10TvShowsInIndiaTodayList,
                            ),
                            constHeight(10),
                            HorizontalScrollingCard(
                              title: 'Tense Dramas',
                              imageList: state.tenseDramasList,
                            ),
                            constHeight(10),
                            HorizontalScrollingCard(
                              title: 'South Indian Cinema',
                              imageList: state.southIndianCinemaList,
                            ),
                            constHeight(10),
                          ],
                        ),
                        // Show or hide the AppBar based on scroll direction
                        scrollDirectionNotifier.value
                            ? const AppBarHome()
                            : const SizedBox.shrink(),
                      ],
                    );
                  },
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
