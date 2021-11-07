import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onboarding_screen/widget/button_widget.dart';

import '../main.dart';
import 'onboarding_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: const Text(MyApp.title),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'HomePage',
            style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 24),
          ButtonWidget(
            text: 'Go Back',
            onClicked: () => goToOnBoarding(context),
          ),
        ],
      ),
    ),
  );

  void goToOnBoarding(context) => Navigator.of(context).pushReplacement(
    MaterialPageRoute(builder: (_) => const OnBoardingPage()),
  );
}
