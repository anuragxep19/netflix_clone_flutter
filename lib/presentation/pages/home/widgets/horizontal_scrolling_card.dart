import 'package:flutter/material.dart';
import 'package:netflix_ui/Presentation/pages/Search/Widgets/heading.dart';
import 'package:netflix_ui/core/constants.dart';
import 'package:netflix_ui/core/strings.dart';
import 'package:netflix_ui/domain/models/new_and_hot/coming_soon_model/coming_soon_model.dart';

class HorizontalScrollingCard extends StatelessWidget {
  final String title;
  final List<ComingSoonResultModel> imageList;

  const HorizontalScrollingCard({
    super.key,
    required this.title,
    required this.imageList,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Section title
          Heading(title: title),

          constHeight(10), // Spacing between title and image list
          // Horizontal scrollable image list
          LimitedBox(
            maxHeight: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: imageList.length,
              itemBuilder: (context, index) {
                final movie = imageList[index];

                return Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Container(
                    width: 140,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                        image: NetworkImage('$imageBaseUrl${movie.posterPath}'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
