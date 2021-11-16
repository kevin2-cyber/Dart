import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sign Up',
      theme: ThemeData.dark(),
      home: const Scaffold(
      //  appBar: AppBar(
       //   title: const Center(
        //    child: Text('Register with us'),
       //   ),
      //    backgroundColor: Colors.lightBlueAccent,
     //   ),
        body:MyHomePage(title: 'Sign Up'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required String title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: const Color(0xfff1f1f5),
            borderRadius: BorderRadius.circular(14.0)
          ),
          child: TextFormField(
            decoration: const InputDecoration(
              hintText: 'Username',
              hintStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
            ),
          ),
          color: Colors.green,
        ),
        const SizedBox(
          height: 32.0,
        ),
        Container(
          child: const Text('Password'),
          color: Colors.greenAccent,
        ),
        const SizedBox(
          height: 200.0,
        ),
        ElevatedButton(
          onPressed: (){},
          child: const Text('Sign Up'),
        ),
      ],
    );
  }
}

