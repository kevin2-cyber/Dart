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
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: double.infinity,
                  width: 100.0,
                  color: Colors.red,
                  child: const Center(
                      child: Text('Container 1'),
                  ),
                ),
                Container(
                  height: 100.0,
                  width: 100.0,
                  color: Colors.yellow,
                  child: const Center(
                    child: Text('Container 2'),
                  ),
                ),
                Container(
                  height: double.infinity,
                  width: 100.0,
                  color: Colors.blue,
                  child:  const Center(
                    child: Text('Container 3'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
