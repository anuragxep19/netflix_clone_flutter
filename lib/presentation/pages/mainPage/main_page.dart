import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/pages/downloads/downloads_page.dart';
import 'package:netflix_clone/presentation/pages/fastLaugh/fast_laugh_page.dart';
import 'package:netflix_clone/presentation/pages/home/home_page.dart';
import 'package:netflix_clone/presentation/pages/new&Hot/new_and_hot_page.dart';
import 'package:netflix_clone/presentation/pages/Search/search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // Controller to manage the swiping between screens
  final PageController _pageController = PageController();

  //Currently selected tab index
  int _selectedIndex = 0;

  /// Handle bottom navigation tap
  void _onItemTapped(int index) {
    setState(() => _selectedIndex = index);

    //Animate to selected page in PageView
    _pageController.animateToPage(
      index,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  /// Called when the page is swiped
  void _onPageChanged(int index) {
    setState(() => _selectedIndex = index);
  }

  // List of bottom navigation destination pages
  final List<Widget> _screens = const [
    HomePage(),
    NewAndHotPage(),
    FastLaughPage(),
    SearchPage(),
    DownloadsPage(),
  ];
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // Page content updates based on ValueNotifier
        body: PageView(
          controller: _pageController,
          onPageChanged: _onPageChanged,
          physics: BouncingScrollPhysics(),
          children: _screens,
        ),

        // Bottom navigation bar that controls pageChangeNotifier
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
          unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.normal),
          onTap: _onItemTapped,

          items: [
            _buildItem(Icons.home_outlined, 'Home', 0),
            _buildItem(Icons.video_collection_outlined, 'New & Hot', 1),
            _buildItem(Icons.emoji_emotions_outlined, 'Fast Laugh', 2),
            _buildItem(Icons.search_rounded, 'Search', 3),
            _buildItem(Icons.arrow_circle_down_outlined, 'Downloads', 4),
          ],
        ),
      ),
    );
  }

  /// Helper method to build bottom navigation bar item
  BottomNavigationBarItem _buildItem(IconData icon, String label, int index) {
    final bool isSelected = _selectedIndex == index;

    return BottomNavigationBarItem(
      label: label,
      icon: Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
        decoration:
            isSelected
                ? BoxDecoration(
                  color: Colors.grey.shade900,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(18),
                )
                : null,

        //The tab icon
        child: Icon(
          icon,
          color:
              isSelected
                  ? const Color.fromARGB(255, 255, 255, 255)
                  : Colors.grey,
          size: 30,
        ),
      ),
    );
  }
}
