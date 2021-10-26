import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent[200],
        appBar: AppBar(
          title: Center(
            child: Text('I am Poor'),
          ),
          backgroundColor: Colors.blueAccent[400],
        ),
        body: Container(
          child: Center(
            child: Image(
              image: AssetImage('images/snowman.png'),
            ),
          ),
          ),
        ),
      ),
  );
}
