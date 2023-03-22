import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:aplikasi_state_management/views/models/provider/model_makanan.dart';
import 'package:aplikasi_state_management/views/models/provider/done_provider.dart';

class DoneList extends StatelessWidget {
  const DoneList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<MakananTradisional> doneProvider =
        Provider.of<DoneProvider>(
          context,
          listen: false,
        ).doneProvider;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Makanan Tradisional Tercicipi (Provider)',
            style: TextStyle(fontFamily: 'Lobster')),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final MakananTradisional makananList = doneProvider[index];
          return Card(
            color: Colors.green[100],
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /* Text(
                  makananList.nama,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ), */
                Expanded(
                  flex: 1,
                  child: Image.network(makananList.gambar, fit: BoxFit.cover),
                ),
                Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            makananList.nama,
                            style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Lobster'
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(makananList.daerah,
                              style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Lobster'
                              )),
                        ],
                      ),
                    )
                ),
                const Icon(Icons.done_outline),
              ],
            ),
          );
        },
        itemCount: doneProvider.length,
      ),
    );
  }
}