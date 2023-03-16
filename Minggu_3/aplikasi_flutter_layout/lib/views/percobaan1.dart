import 'package:flutter/material.dart';

class Percobaan1 extends StatelessWidget {
  const Percobaan1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Percobaan 1: Tampilan 1 (Judul)'),
      ),
      body: SafeArea(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                  margin: const EdgeInsets.all(16),
                  child: const Text("Surabaya Submarine Monument",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ))),
            ]),
      ),
    );
  }
}
