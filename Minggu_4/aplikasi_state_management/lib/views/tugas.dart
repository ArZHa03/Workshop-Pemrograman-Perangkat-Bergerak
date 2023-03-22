import 'package:aplikasi_state_management/views/models/provider/done_provider.dart';
import 'package:aplikasi_state_management/views/models/provider/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Tugas extends StatelessWidget {
  const Tugas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DoneProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'contacs',
        theme: ThemeData(),
        home: const MainScreen(),
      ),
    );
  }
}