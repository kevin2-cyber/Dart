import 'package:flutter/material.dart';
import 'package:sign_up_page_sample/main.dart';
import 'package:sign_up_page_sample/page/sign_in_page.dart';
import 'package:sign_up_page_sample/widget/button_widget.dart';


class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              const Text('Hello'),
              const SizedBox(
                height: 50.0,
              ),
              const Text('Welcome to my Homepage'),
              const SizedBox(
                height: 50.0,
              ),
              Button(
                  text: 'Log out',
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=> const SignInPage()));
                  }
              ),
            ],
          ),
        ),
      ),
    );
  }
}
