import 'package:flutter/material.dart';
import 'package:aplikasi_flutter_layout/views/percobaan1.dart';
import 'package:aplikasi_flutter_layout/views/percobaan2.dart';
import 'package:aplikasi_flutter_layout/views/percobaan3.dart';
import 'package:aplikasi_flutter_layout/views/percobaan4.dart';
import 'package:aplikasi_flutter_layout/views/percobaan5.dart';
import 'package:aplikasi_flutter_layout/views/latihan.dart';
import 'package:aplikasi_flutter_layout/views/tugas.dart';
import 'package:aplikasi_flutter_layout/views/part_two/percobaan1.dart';
import 'package:aplikasi_flutter_layout/views/part_two/latihan.dart';
import 'package:aplikasi_flutter_layout/views/part_two/tugas.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Card(
              margin: EdgeInsets.all(36.0),
              color: Colors.blue,
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Aplikasi Flutter Layout',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Percobaan1()),
                    );
                  },
                  child: const Text('Percobaan 1'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Percobaan2()),
                    );
                  },
                  child: const Text('Percobaan 2'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Percobaan3()),
                    );
                  },
                  child: const Text('Percobaan 3'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Percobaan4()),
                    );
                  },
                  child: const Text('Percobaan 4'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Percobaan5()),
                    );
                  },
                  child: const Text('Percobaan 5'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Latihan()),
                    );
                  },
                  child: const Text('Latihan'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Tugas()),
                    );
                  },
                  child: const Text('Tugas'),
                ),
              ],
            ),
            const Card(
              margin: EdgeInsets.only(top: 144, bottom: 36),
              color: Colors.blue,
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Aplikasi Flutter Layout - Part 2',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const PercobaanSatu()),
                    );
                  },
                  child: const Text('Percobaan 1'),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Latihan2()),
                      );
                    },
                  child: const Text('Latihan'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Tugas2()),
                    );
                  },
                  child: const Text('Tugas'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}