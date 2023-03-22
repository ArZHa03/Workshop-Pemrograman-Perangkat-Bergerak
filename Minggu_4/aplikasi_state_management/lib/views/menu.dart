import 'package:flutter/material.dart';
import 'package:aplikasi_state_management/views/percobaan_satu.dart';
import 'package:aplikasi_state_management/views/percobaan_dua.dart';
import 'package:aplikasi_state_management/views/tugas.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Aplikasi State Management', style: TextStyle(fontFamily: 'Lobster')),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          const Text(
          'Menu',
          style: TextStyle(fontSize: 30,
            fontFamily: 'Lobster',
            fontWeight: FontWeight.bold,),
        ),
            const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PercobaanSatu()),
                );
              },
              child: const Text('Percobaan Satu', style: TextStyle(fontSize: 15, fontFamily: 'Oxygen')),
            ),
            const SizedBox(width: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PercobaanDua()),
                );
              },
              child: const Text('Percobaan Dua', style: TextStyle(fontSize: 15, fontFamily: 'Oxygen')),
            ),
            const SizedBox(width: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Tugas()),
                );
              },
              child: const Text('Tugas', style: TextStyle(fontSize: 15, fontFamily: 'Oxygen')),
            ),
          ],
        ),

      ]),
    ),);
  }
}
