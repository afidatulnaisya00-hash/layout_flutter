import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // METHOD UNTUK MEMBUAT BUTTON
  Column _buildButtonColumn(
    Color color,
    IconData icon,
    String label,
  ) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: color,
        ),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Color color = Colors.pink;

    // LANGKAH 3 - TITLE SECTION
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'SMKN 1 PURWOSARI',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Purwosari, Pasuruan, Jawa Timur',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: const Color.fromARGB(255, 244, 240, 41),
          ),
          const Text('45'),
        ],
      ),
    );

    // LANGKAH 4 - BUTTON SECTION
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(
          color,
          Icons.call,
          'CALL',
        ),
        _buildButtonColumn(
          color,
          Icons.near_me,
          'ROUTE',
        ),
        _buildButtonColumn(
          color,
          Icons.share,
          'SHARE',
        ),
      ],
    );

    // LANGKAH 5 - TEXT SECTION
    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'SMKN 1 Purwosari merupakan sekolah menengah kejuruan '
        'yang berada di Kabupaten Pasuruan, Jawa Timur. '
        'Sekolah ini memiliki berbagai program keahlian yang '
        'membantu siswa mengembangkan pengetahuan dan keterampilan. '
        'Lingkungan sekolah juga mendukung siswa untuk belajar '
        'dan mempersiapkan diri menghadapi dunia kerja.',
        softWrap: true,
      ),
    );

    // LANGKAH 7 - GABUNGKAN SEMUA DENGAN LISTVIEW
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Naisya - No Absen 01 - Kelas XI RPL 2',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Naisya - XI RPL 2'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'assets/images/sekolah.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
}