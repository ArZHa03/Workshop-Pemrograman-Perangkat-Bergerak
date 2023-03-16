import 'package:flutter/material.dart';
import 'package:aplikasi_flutter_layout/views/part_two/model/makanan_tradisional.dart';

import 'model/detail_makanan.dart';

class Tugas2 extends StatelessWidget {
  const Tugas2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Makanan Tradisional Indonesia'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final MakananTradisional place = makananTradisionalList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailMakanan(place: place);
              }));
            },
            child: listItem(place),
          );
        },
        itemCount: makananTradisionalList.length,
      ),
    );
  }

  Widget listItem(MakananTradisional place) {
    return Card(
      child:
      Row(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
        Expanded(
          flex: 1,
          child: Image.network(place.gambar,
              width: 100.0, height: 100.0, fit: BoxFit.cover),
        ),
        Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(place.nama,
                      style: const TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold
                      )),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(place.daerah, style: const TextStyle(fontSize: 16.0)),
                ],
              ),
            )),
      ]),
    );
  }
}
