import 'package:flutter/material.dart';
import 'package:aplikasi_state_management/views/models/provider/model_makanan.dart';

class SelectItem extends StatelessWidget {
  final MakananTradisional makananList;
  final bool isDone;
  final Function(bool? value) onCheckBoxClicked;

  const SelectItem({
    Key? key,
    required this.makananList,
    required this.isDone,
    required this.onCheckBoxClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: isDone ? Colors.green[100] : Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
          Checkbox(
            checkColor: Colors.white,
              value: isDone,
              onChanged: onCheckBoxClicked,
          ),
        ],
      ),
    );
  }
}