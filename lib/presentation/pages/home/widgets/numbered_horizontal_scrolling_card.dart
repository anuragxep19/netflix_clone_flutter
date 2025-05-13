import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/Presentation/pages/Search/Widgets/heading.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/core/strings.dart';
import 'package:netflix_clone/domain/models/new_and_hot/everyones_watching_model/everyones_watching_model.dart';

class NumberedHorizontalScrollingCard extends StatelessWidget {
  final String title;
  final List<EveryonesWatchingResultModel> imageList;

  const NumberedHorizontalScrollingCard({
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
          Heading(title: title),
          constHeight(10),
          LimitedBox(
            maxHeight: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: imageList.length.clamp(0, 10),
              itemBuilder: (context, index) {
                final posterPath = imageList[index].posterPath;
                return Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 35, right: 10),
                      child: Container(
                        width: 140,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(
                            image: NetworkImage('$imageBaseUrl$posterPath'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      bottom: 20,
                      child: BorderedText(
                        strokeWidth: 4.0,
                        strokeColor: Colors.grey.shade300,
                        child: Text(
                          '${index + 1}',
                          style: const TextStyle(
                            fontSize: 100,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
