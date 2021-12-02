import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sign_up_page_sample/main.dart';
import 'package:sign_up_page_sample/widget/button_widget.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 50,
              right: 50,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.red,
                ),
              ),
            ),
            Center(
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Card(
                  child: Image.asset('images/uglogo.png'),
                ),
                Text(
                    'UG E-VOTES',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      color: buttonColor,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                    'Participate in campus',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      color: buttonColor,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                    'elections easily',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      color: buttonColor,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50.0,
                ),
                const Button(
                  text: 'Log In',
                ),
              ],
          ),
            ),
        ],
        ),
      ),
    );
  }
}


//TODO: Add a container at the top corner