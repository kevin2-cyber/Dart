import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void playSound(int sound) {
    final player = AudioCache();
    player.play('note$sound.wav');
  }

  void buildKey(){
    Expanded(
      child: TextButton(
        onPressed: () {
          playSound(1);
        },
        child: const Text('Click Me'),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.red),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildKey(),
            buildKey(),
            buildKey(),
            buildKey(),
            buildKey(),
            buildKey(),
            buildKey(),
          ],
        ),
      ),
    );
  }
}
