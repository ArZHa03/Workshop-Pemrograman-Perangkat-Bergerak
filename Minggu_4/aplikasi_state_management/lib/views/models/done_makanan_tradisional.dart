import 'package:flutter/material.dart';
import 'package:aplikasi_state_management/views/models/makanan_tradisional.dart';

class DoneMakananTradisional extends StatelessWidget {
  final List<MakananTradisional> doneMakananTradisionalList;
  const DoneMakananTradisional({
    Key? key,
    required this.doneMakananTradisionalList
}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Makanan Tradisional Telah Dimakan (Models)', style: TextStyle(fontFamily: 'Lobster')),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final MakananTradisional place = doneMakananTradisionalList[index];
          return Card(
            color: Colors.green[100],
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  place.nama,
                  style: const TextStyle(
                    fontSize: 20,
                    fontFamily: 'Lobster',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Icon(Icons.done_outline),
              ],
            ),
          );
        },
        itemCount: doneMakananTradisionalList.length,
      ),
    );
  }
}