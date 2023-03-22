import 'package:flutter/material.dart';
import 'package:aplikasi_state_management/views/models/makanan_tradisional.dart';

class DetailMakananTradisional extends StatelessWidget {
  const DetailMakananTradisional({super.key, required this.place});

  final MakananTradisional place;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(place.nama),
      ),
      body: SafeArea(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.network(place.gambar,
                  height: 240, fit: BoxFit.cover, width: double.infinity),
              Container(
                  margin: const EdgeInsets.only(top: 16),
                  child: Text(place.nama,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 30,
                        fontFamily: 'Lobster',
                        fontWeight: FontWeight.bold,
                      ))),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 16),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Column(children: <Widget>[
                        const Icon(Icons.calendar_today),
                        Text(place.hariBuka),
                      ]),
                      Column(children: <Widget>[
                        const Icon(Icons.access_time),
                        Text(place.pukulBuka),
                      ]),
                      Column(children: <Widget>[
                        const Icon(Icons.monetization_on),
                        Text(place.harga),
                      ]),
                    ]),
              ),
              Container(
                padding: const EdgeInsets.all(16),
                child: Text(
                  place.deskripsi,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 16,
                    fontFamily: 'Oxygen',
                  ),
                ),
              ),
              SizedBox(
                  height: 150,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: place.gambarList.length,
                    itemBuilder: (context, index) {
                      final String asset = place.gambarList[index];
                      return _buildImagelItem(asset);
                    },
                  )),
            ]),
      ),
    );
  }

  Widget _buildImagelItem(String asset) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Image.network(asset)
      ),
    );
  }
}