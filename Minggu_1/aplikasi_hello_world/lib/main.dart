import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Aplikasi Hello World"),
        ),
        body: Center(
          child: Container(
            color: Colors.deepOrangeAccent,
            width: 150,
            height: 50,
            child: const Text(
              "Hello World. Saya sedang mempelajari flutter mengenai widget text. Ada beberapa masalah terjadi",
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.amberAccent,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w500,
                  fontSize: 13),
 
              /* overflow: TextOverflow.clip,
              softWrap: false, */

            ),
          ),
        ),
      ),
    );
  }
}
