import 'package:flutter/material.dart';
import 'package:aplikasi_state_management/views/models/provider/model_makanan.dart';

class DoneProvider extends ChangeNotifier {
  final List<MakananTradisional> _doneProvider = [];

  List<MakananTradisional> get doneProvider => _doneProvider;

  void complete(MakananTradisional makananList, bool isDone) {
    isDone ? _doneProvider.add(makananList) : _doneProvider.remove(makananList);
    notifyListeners();
  }
}