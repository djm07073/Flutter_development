import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
        // ignore: prefer_const_constructors
        home: Scaffold(
      backgroundColor: Colors.red.shade700,
      body: Center(
        child: Text('Hello World'),
      ),
    ));
  }
}
