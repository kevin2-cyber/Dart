import 'package:flutter/material.dart';

void main() => runApp(const BallPage());

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
              child: Text('Ask Me Anything'),
          ),
          backgroundColor: Colors.blue[900],
        ),
        body: const Page(),
        backgroundColor: Colors.blue,
      ),
    );
  }
}

class Page extends StatefulWidget {
  const Page({Key? key}) : super(key: key);

  @override
  _PageState createState() => _PageState();
}

class _PageState extends State<Page> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Image.asset('images/ball1.png'),
      ),
    );
  }
}
