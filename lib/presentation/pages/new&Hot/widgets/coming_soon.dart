import 'package:flutter/material.dart';
import 'package:netflix_ui/core/constants.dart';
import 'package:netflix_ui/presentation/pages/fastLaugh/widgets/icon_text.dart';

class ComingSoon extends StatelessWidget {
  final String month;
  final String date;
  final String image;
  final String title;
  final String description;

  const ComingSoon({
    super.key,
    required this.month,
    required this.date,
    required this.image,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Left Column: Month and Date
        Expanded(
          flex: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              constHeight10,
              Text(
                month.toUpperCase(),
                style: const TextStyle(color: Colors.grey),
              ),
              Text(date, style: const TextStyle(fontSize: 30)),
            ],
          ),
        ),

        // Right Column: Image, Title, Info
        Expanded(
          flex: 4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              constHeight10,

              // Movie Poster
              Stack(
                children: [
                  SizedBox(
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
                        return const Center(
                          child: Icon(Icons.wifi_off_rounded),
                        );
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

              // Title and action icons (Remind Me, Info)
              Row(
                children: [
                  Expanded(
                    child: Text(
                      title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: heading1,
                    ),
                  ),
                  constWidth20,
                  IconText(
                    icon: Icons.notifications_none_rounded,
                    label: 'Remind Me',
                    iconSize: 25,
                    style: const TextStyle(color: Colors.grey),
                    onTap: () {},
                  ),
                  constWidth(20),
                  IconText(
                    icon: Icons.info_outline,
                    label: 'Info',
                    iconSize: 25,
                    style: const TextStyle(color: Colors.grey),
                    onTap: () {},
                  ),
                  constWidth(20),
                ],
              ),

              // Coming on date
              const Text('Coming on Friday'),
              constHeight(10),

              // Title (again, for emphasis) and description
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              constHeight(5),
              Text(
                description,
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(color: Colors.grey, fontSize: 14),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
