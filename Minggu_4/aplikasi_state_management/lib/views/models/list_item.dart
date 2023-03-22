import 'package:aplikasi_state_management/views/models/makanan_tradisional.dart';
import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final MakananTradisional place;
  final bool isDone;
  final Function(bool? value) onCheckBoxClicked;

  const ListItem({
    super.key,
    required this.place,
    required this.isDone,
    required this.onCheckBoxClicked,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: isDone ? Colors.green[100] : Colors.white,
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
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
                          fontSize: 20.0, fontWeight: FontWeight.bold)),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(place.daerah, style: const TextStyle(fontSize: 16.0)),
                ],
              ),
            )),
        Checkbox(
            checkColor: Colors.white,
            value: isDone,
            onChanged: onCheckBoxClicked),
      ]),
    );
  }
}
