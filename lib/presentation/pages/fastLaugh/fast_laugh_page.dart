import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_ui/presentation/bloc/fastLaugh/fast_laugh_bloc.dart';
import 'package:netflix_ui/presentation/pages/fastLaugh/widgets/video_list.dart';

class FastLaughPage extends StatefulWidget {
  const FastLaughPage({super.key});

  @override
  State<FastLaughPage> createState() => _FastLaughPageState();
}

class _FastLaughPageState extends State<FastLaughPage>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;
  @override
  void initState() {
    super.initState();
    context.read<FastLaughBloc>().add(const FastLaughInitialize());
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocBuilder<FastLaughBloc, FastLaughState>(
      builder: (context, state) {
        // Show loading spinner while data is being fetched
        if (state.isLoading) {
          return const Center(child: CircularProgressIndicator());

          // Show error message if an error occurred
        } else if (state.isError) {
          return const Center(child: Text('Error Loading Data'));

          // Show message if the list is empty
        } else if (state.videoList.isEmpty) {
          return const Center(child: Text('List is Empty'));

          // Show vertical PageView of videos
        } else {
          return PageView.builder(
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return VideoListInheritedWidget(
                movieData: state.videoList[index],
                child: VideoList(index: index),
              );
            },
            itemCount: 10, // Limit to 10 items
          );
        }
      },
    );
  }
}
