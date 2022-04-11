import 'package:farhanunnasih_2042408/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:farhanunnasih_2042408/collection_screen.dart';
import 'package:farhanunnasih_2042408/diary_screen.dart';
import 'package:farhanunnasih_2042408/library_screen.dart';
import 'package:farhanunnasih_2042408/profile_screen.dart';
import 'package:farhanunnasih_2042408/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'MyProfile App';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: "SanFransisco"),
      initialRoute: "/login",
      routes: {
        "/login": (context) => const LoginScreen(),
        "/": (context) => const HomeScreen(),
        "/profile": (context) => const ProfileScreen(),
        "/collection": (context) => const CollectionScreen(),
        "/diary": (context) => const DiaryScreen(),
        "/library": (context) => const LibraryScreen(),
      },
    );
  }
}
