import 'package:flutter/material.dart';

class Percobaan5 extends StatelessWidget {
  const Percobaan5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Percobaan 5 : Tampilan 5 (Font)'),
      ),
      body: SafeArea(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.asset('assets/images/submarine.jpg',
                  height: 240, fit: BoxFit.cover, width: double.infinity),
              Container(
                  margin: const EdgeInsets.only(top: 16),
                  child: const Text("Surabaya Submarine Monument",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'Lobster',
                        fontWeight: FontWeight.bold,
                      ))),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 16),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(children: const <Widget>[
                        Icon(Icons.calendar_today),
                        Text("Open Everyday"),
                      ])
                    ]),
              ),
              Container(
                padding: const EdgeInsets.all(16),
                child: const Text(
                  "Museum inside a decommissioned Russian war submarine with tours & an adjacent park with cafes. Clean and well maintained. Car park cost 10k, entrance fee 15k/person. You can see KRI Pasopati there, it is a russian whiskey class. You can also watch the video about the Indonesian Navy at the building beside the submarine.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Oxygen',
                  ),
                ),
              ),
              SizedBox(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.network(
                            'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('assets/images/monkasel_1.webp'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('assets/images/monkasel_2.jpg'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('assets/images/monkasel_3.jpg'),
                      ),
                    ],
                  )),
            ]),
      ),
    );
  }
}
