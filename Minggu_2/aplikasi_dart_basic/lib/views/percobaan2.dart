import 'package:flutter/material.dart';

class PercobaanDua extends StatefulWidget {
  const PercobaanDua({Key? key}) : super(key: key);

  @override
  State<PercobaanDua> createState() => _PercobaanDuaState();
}

class _PercobaanDuaState extends State<PercobaanDua> {
  int _counter = 1;
  String _text = "Ganjil or Genap";

  void _incrementCounter() {
    setState(() {
      _counter++;
      if (_counter > 10) {
        _counter = 1;
      }

      if (_counter % 2 == 0) {
        _text = "Genap";
      } else {
        _text = "Ganjil";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Percobaan 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              _text,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
