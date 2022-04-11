import 'package:farhanunnasih_2042408/collection_screen.dart';
import 'package:farhanunnasih_2042408/diary_screen.dart';
import 'package:farhanunnasih_2042408/library_screen.dart';
import 'package:farhanunnasih_2042408/profile_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final routes = [
    HomePage(),
    const ProfileScreen(),
    const CollectionScreen(),
    const DiaryScreen(),
    const LibraryScreen()
  ];
  int _selectedIndex = 0;
  PageController pageController = PageController();

  void onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
    pageController.jumpToPage(index);
  }

  void onSwipe(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
          controller: pageController, children: routes, onPageChanged: onSwipe),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: onTap,
        items: const [
          BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: "Profile", icon: Icon(Icons.person)),
          BottomNavigationBarItem(
              label: "Collection", icon: Icon(Icons.library_music)),
          BottomNavigationBarItem(label: "Diary", icon: Icon(Icons.book)),
          BottomNavigationBarItem(label: "Library", icon: Icon(Icons.image)),
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final screenTitle = "Home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(screenTitle),
        ),
        body: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                const Text(
                  "Welcome, Farhanunnasih.",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
                const Divider(),
                const Text(
                  "Gunakan Bottom Navigation dibawah halaman untuk berganti halaman.",
                  style: TextStyle(fontSize: 24, color: Colors.black54),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: ElevatedButton(
                      onPressed: () =>
                          Navigator.pushReplacementNamed(context, "/login"),
                      child: const Text("Logout")),
                )
              ],
            )));
  }
}
