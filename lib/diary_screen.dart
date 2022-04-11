import 'package:flutter/material.dart';

class DiaryScreen extends StatelessWidget {
  final screenTitle = "Diary";

  const DiaryScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    String diary =
        '''Saya lahir di Bandung pada tanggal 10 september 2001. Awal tinggal di Riung Bandung. Hingga umur 5 tahun pindah ke Binong, bersekolah di SD Kiaracondong 3.
\nLalu SMP saya di Bina Dharma 2 Bandung, setelah itu SMK 4 Bandung dan pindah rumah ke Asrama Pussenkav di Jalan Gatot Subroto. Setelah Saya lulus SMK saya mengambil kuliah S1 Jurusan Teknik Informatika di STMIK AMIK Bandung''';
    return Scaffold(
      appBar: AppBar(
        title: Text(screenTitle),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16, right: 16, top: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "My Diary",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              diary,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w100),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
