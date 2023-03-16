import 'package:flutter/material.dart';

class Percobaan3 extends StatelessWidget {
  const Percobaan3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Percobaan 3 : Tampilan 3 (Icon)'),
      ),
      body: SafeArea(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                  margin: const EdgeInsets.only(top: 16),
                  child: const Text("Surabaya Submarine Monument",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ))),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: const <Widget>[
                        Icon(Icons.calendar_today),
                        Text("Open Everyday"),
                      ]
                    )
                  ]
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16),
                child: const Text(
                  "Museum inside a decommissioned Russian war submarine with tours & an adjacent park with cafes. Clean and well maintained. Car park cost 10k, entrance fee 15k/person. You can see KRI Pasopati there, it is a russian whiskey class. You can also watch the video about the Indonesian Navy at the building beside the submarine.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}