import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('How are you'),
          ),
          backgroundColor: Colors.blueAccent[400],
        ),
        body: Container(
          child: Center(
            child: Text('I\'m fine'),
          ),
        ),
      ),
    ),
  );
}
