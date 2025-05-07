import 'package:flutter/material.dart';

// ValueNotifier to keep track of the selected page index
final ValueNotifier<int> pageChangeNotifier = ValueNotifier(0);

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
      valueListenable: pageChangeNotifier,
      builder: (context, index, _) {
        return BottomNavigationBar(
          // Update the selected page index on tap
          onTap: (newIndex) => pageChangeNotifier.value = newIndex,

          // Current selected index
          currentIndex: index,

          // Keeps all items visible even with more than 3
          type: BottomNavigationBarType.fixed,

          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,

          // Navigation items
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined, size: 25),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.video_collection_outlined, size: 25),
              label: 'New & Hot',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.emoji_emotions_outlined, size: 25),
              label: 'Fast Laugh',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search_rounded, size: 25),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.arrow_circle_down_outlined, size: 25),
              label: 'Downloads',
            ),
          ],
        );
      },
    );
  }
}
