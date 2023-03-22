// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:aplikasi_state_management/views/models/provider/done_list.dart';
import 'package:aplikasi_state_management/views/models/provider/makanan_list.dart';
import 'package:aplikasi_state_management/views/models/provider/model_makanan.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<MakananTradisional> doneList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Makanan Tradisional (Provider)',
            style: TextStyle(fontFamily: 'Lobster')),
        actions: [
          IconButton(
            icon: const Icon(Icons.done_outline),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const DoneList()),
              );
            },
          ),
        ],
      ),
      body: MakananList(doneList: doneList),
    );
  }
}
