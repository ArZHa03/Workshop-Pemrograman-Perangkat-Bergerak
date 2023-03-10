import 'package:flutter/material.dart';

class PercobaanSatu extends StatefulWidget {
  const PercobaanSatu({Key? key}) : super(key: key);

  @override
  State<PercobaanSatu> createState() => _PercobaanSatuState();
}

class _PercobaanSatuState extends State<PercobaanSatu> {
  int _counter = 1;

  void _incrementCounter() {
    setState(() {
      _counter++;
      if(_counter>10) {
        _counter = 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Percobaan 1'),
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