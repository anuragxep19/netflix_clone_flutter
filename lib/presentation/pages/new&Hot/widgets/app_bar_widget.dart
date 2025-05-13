import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent, // Transparent background
      elevation: 0, // No shadow
      // Leading widget- "New & Hot" title
      leading: const Padding(
        padding: EdgeInsets.all(10),
        child: Text(
          'New & Hot',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      leadingWidth: 200, // Reserve more space for title
      // Actions on the right side
      actions: [
        const Icon(Icons.cast_rounded, size: 30), // Cast icon
        const SizedBox(width: 20),
        Container(
          width: 30,
          height: 30,
          color: Colors.blue, // Placeholder for user avatar or profile icon
        ),
        constWidth(10), // Reusable constant width spacing
      ],

      // Bottom TabBar
      bottom: TabBar(
        indicatorPadding: const EdgeInsets.symmetric(horizontal: 10),
        indicatorSize: TabBarIndicatorSize.tab,
        indicator: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        labelColor: Colors.black,
        unselectedLabelColor: Colors.white,
        splashBorderRadius: BorderRadius.circular(30),
        dividerColor: Colors.transparent,

        // Tab options
        tabs: const [
          Tab(text: '🍿 Coming Soon'),
          Tab(text: '👀 Everyone\'s Watching'),
        ],
      ),
    );
  }
}
