import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/image.jpg'),
                fit: BoxFit.fill,
              ),
            ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MaterialButton(
              onPressed: (){},
              height: 50.0,
              minWidth: 240.0,
              color: Colors.red,
              shape: const StadiumBorder(),
            ),
          ],
        ),
          ),
    );
  }
}
