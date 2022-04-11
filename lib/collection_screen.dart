import 'package:flutter/material.dart';

class CollectionScreen extends StatelessWidget {
  final screenTitle = "My Collections";

  const CollectionScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(screenTitle),
        ),
        body: ListView(
          children: [
            createSongCard("Dreadnought", "Sabaton", " ",
                "images/song-sabaton-dreadnought.jpg"),
            createSongCard("The Last Stand", "Sabaton", " ",
                "images/song-sabaton-tls.jpg"),
            createSongCard("Victory", "Two Steps From Hell", " ",
                "images/song-twfh-victory.jpg"),
            createSongCard(
                "Sahara", "Henson", " ", "images/song-henson-sahara.jpg")
          ],
        ));
  }

  Widget createSongCard(
      String title, String artist, String desc, String assetPath) {
    return Card(
      child: Container(
        height: 160,
        color: Colors.white,
        child: Row(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Expanded(
                  child: Image.asset(assetPath, fit: BoxFit.fill),
                  flex: 5,
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: ListTile(
                        title: Text(title),
                        subtitle: Text(artist),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16, top: 8),
                        child: Text(desc, textAlign: TextAlign.start),
                      ),
                      flex: 2,
                    )
                  ],
                ),
              ),
              flex: 8,
            ),
          ],
        ),
      ),
      elevation: 8,
      margin: const EdgeInsets.all(10),
    );
  }
}
