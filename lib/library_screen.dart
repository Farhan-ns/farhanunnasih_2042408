import 'package:flutter/material.dart';

class LibraryScreen extends StatelessWidget {
  final screenTitle = "Library";

  const LibraryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "images/lib-d-1.jpg",
      "images/lib-d-2.png",
      "images/lib-d-3.jpg",
      "images/lib-rg-1.jpg",
      "images/lib-rg-2.jpg",
      "images/lib-da.jpg",
      "images/lib-if.jpg",
      "images/lib-sab.jpg",
      "images/lib-wl-1.jpg",
    ];
    return Scaffold(
        appBar: AppBar(
          title: Text(screenTitle),
        ),
        backgroundColor: Color.fromRGBO(56, 56, 56, 1),
        body: Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: GridView.builder(
              itemCount: images.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 5.0,
                mainAxisSpacing: 5.0,
              ),
              itemBuilder: (BuildContext context, int index) {
                return Image.asset(images[index]);
              },
            ),
          ),
        ));
  }
}
