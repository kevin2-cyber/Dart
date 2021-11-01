import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
       backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                height: 100.0,
                width: 100.0,
                color: Colors.white,
                child: const Center(
                    child: Text('Container 1'),
                ),
              ),
              Container(
                height: 100.0,
                width: 100.0,
                color: Colors.white38,
                child: const Center(
                  child: Text('Container 2'),
                ),
              ),
              Container(
                height: 100.0,
                width: 100.0,
                color: Colors.white12,
                child:  const Center(
                  child: Text('Container 3'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
