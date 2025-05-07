import 'package:flutter/material.dart';
import 'package:netflix_ui/presentation/pages/downloads/downloads_page.dart';
import 'package:netflix_ui/presentation/pages/fastLaugh/fast_laugh_page.dart';
import 'package:netflix_ui/presentation/pages/home/home_page.dart';
import 'package:netflix_ui/presentation/pages/MainPage/widgets/bottom_navigation_widget.dart';
import 'package:netflix_ui/presentation/pages/new&Hot/new_and_hot_page.dart';
import 'package:netflix_ui/presentation/pages/Search/search_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  // List of bottom navigation destination pages
  final List<Widget> pages = const [
    HomePage(),
    NewAndHotPage(),
    FastLaughPage(),
    SearchPage(),
    DownloadsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // Page content updates based on ValueNotifier
        body: ValueListenableBuilder<int>(
          valueListenable: pageChangeNotifier,
          builder: (context, index, _) => pages[index],
        ),

        // Bottom navigation bar that controls pageChangeNotifier
        bottomNavigationBar: const BottomNavigationWidget(),
      ),
    );
  }
}
