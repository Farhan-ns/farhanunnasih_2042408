import 'dart:ui';

import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final screenTitle = "Profile";

  const ProfileScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      padding: EdgeInsets.zero,
      children: [buildTop(), BuildBottom()],
    ));
  }

  Widget BuildBottom() {
    return Column(
      children: [
        SizedBox(height: 8),
        const Text(
          "Farhanunnasih",
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        const Text(
          "2042408",
          style: TextStyle(fontSize: 20, color: Colors.black45),
        ),
        SizedBox(height: 16),
        Divider(),
        SizedBox(height: 8),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 48),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Alamat: ",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                "Jl. Deme No. 10 ",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w100),
              ),
              Divider(),
              Text(
                "No Telpon: ",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                "0895351609292",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w100),
              ),
              Divider(),
              Text(
                "Prestasi: ",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                "Medal of Honor LKS Nasional 2020",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w100),
              ),
              Divider(),
              Text(
                "Pengalaman Organisasi: ",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                "Himpunan Mahasiswa Teknik Informatika",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w100),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget buildTop() {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 60),
          color: Colors.grey,
          child: ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
            child: Image.asset("images/code-bg.jpg"),
          ),
        ),
        Positioned(
          top: 185,
          child: CircleAvatar(
            radius: 80,
            backgroundColor: Colors.grey.shade800,
            foregroundImage: const AssetImage("images/profile.jpeg"),
          ),
        )
      ],
    );
  }
}
