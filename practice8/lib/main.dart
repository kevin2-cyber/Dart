import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void playSound(int sound){
    final player = AudioCache();
    player.play('note$sound.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            TextButton(
              onPressed: (){
                playSound(1);
              },
              child: const Text('Click Me'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: (){
                  playSound(2);
                },
                child: const Text('Click Me'),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.orange),
                ),
              ),
            ),
            TextButton(
              onPressed: (){
                playSound(3);
              },
              child: const Text('Click Me'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.yellow),
              ),
            ),
            TextButton(
              onPressed: (){
                playSound(4);
              },
              child: const Text('Click Me'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green),
              ),
            ),
            TextButton(
              onPressed: (){
                playSound(5);
              },
              child: const Text('Click Me'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
              ),
            ),
            TextButton(
              onPressed: (){
                playSound(6);
              },
              child: const Text('Click Me'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.indigo),
              ),
            ),
            TextButton(
              onPressed: (){
                playSound(7);
              },
              child: const Text('Click Me'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.purple),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

