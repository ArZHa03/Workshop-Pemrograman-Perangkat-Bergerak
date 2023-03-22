import 'package:flutter/material.dart';
import 'package:aplikasi_state_management/views/models/provider/model_makanan.dart';

class DetailMakanan extends StatelessWidget {
  const DetailMakanan({Key? key, required this.makananList}) : super(key: key);

  final MakananTradisional makananList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(makananList.nama),
      ),
      body: SafeArea(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.network(makananList.gambar,
                  height: 240, fit: BoxFit.cover, width: double.infinity),
              Container(
                  margin: const EdgeInsets.only(top: 16),
                  child: Text(makananList.nama,
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
                        Text(makananList.hariBuka),
                      ]),
                      Column(children: <Widget>[
                        const Icon(Icons.access_time),
                        Text(makananList.pukulBuka),
                      ]),
                      Column(children: <Widget>[
                        const Icon(Icons.monetization_on),
                        Text(makananList.harga),
                      ]),
                    ]),
              ),
              Container(
                padding: const EdgeInsets.all(16),
                child: Text(
                  makananList.deskripsi,
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
                    itemCount: makananList.gambarList.length,
                    itemBuilder: (context, index) {
                      final String asset = makananList.gambarList[index];
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