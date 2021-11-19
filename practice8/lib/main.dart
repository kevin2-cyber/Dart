import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void playSound(int sound) {
    final player = AudioCache();
    player.play('note$sound.wav');
  }

  Expanded buildKey({required Color color, required int sound}){
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(sound);
        },
        child: const Text('Click Me'),
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color)),
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
            buildKey(color: Colors.red, sound: 1),
            buildKey(color: Colors.orange, sound: 2),
            buildKey(color: Colors.yellow, sound: 3),
            buildKey(color: Colors.green, sound: 4),
            buildKey(color: Colors.blue, sound: 5),
            buildKey(color: Colors.indigo, sound: 6),
            buildKey(color: Colors.purple, sound: 7),
          ],
        ),
      ),
    );
  }
}
