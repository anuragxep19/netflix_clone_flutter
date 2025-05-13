import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/pages/fastLaugh/widgets/icon_text.dart';

class EveryonesWatching extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  const EveryonesWatching({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Movie banner with volume icon
          Stack(
            children: [
              SizedBox(
                width: 400,
                height: 200,
                child: Image.network(
                  image,
                  fit: BoxFit.fill,
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return const Center(
                      child: CircularProgressIndicator(strokeWidth: 2),
                    );
                  },
                  errorBuilder: (context, error, stackTrace) {
                    return const Center(child: Icon(Icons.wifi_off_rounded));
                  },
                ),
              ),
              const Positioned(
                right: 20,
                bottom: 20,
                child: Icon(Icons.volume_off_outlined, size: 30),
              ),
            ],
          ),

          constHeight(10),

          // Title + Action Icons Row
          Row(
            children: [
              // Title
              Expanded(
                child: Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
              // Action Icons
              IconText(
                icon: Icons.share,
                label: 'Share',
                iconSize: 25,
                style: const TextStyle(color: Colors.grey),
                onTap: () {},
              ),
              constWidth(20),
              IconText(
                icon: Icons.add,
                label: 'MyList',
                iconSize: 25,
                style: const TextStyle(color: Colors.grey),
                onTap: () {},
              ),
              constWidth(20),
              IconText(
                icon: Icons.play_arrow_sharp,
                label: 'Play',
                iconSize: 25,
                style: const TextStyle(color: Colors.grey),
                onTap: () {},
              ),
              constWidth(20),
            ],
          ),

          constHeight(10),

          // subheading
          Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),

          constHeight(5),

          // Description with max 4 lines
          Text(
            description,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(color: Colors.grey, fontSize: 14),
          ),

          constHeight(10),
        ],
      ),
    );
  }
}
