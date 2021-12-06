import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sign_up_page_sample/main.dart';
import 'package:sign_up_page_sample/page/sign_in_page.dart';
import 'package:sign_up_page_sample/widget/button_widget.dart';


class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Text(
                      'Hello',
                      style: GoogleFonts.poppins(
                        color: textColor,
                        textStyle: const TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        )
                      ),
                  ),
                ),
                const SizedBox(
                  height: 50.0,
                ),
                Center(
                  child: Text(
                      'Welcome to my Homepage',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: textColor,
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0,
                      ),
                    ),
                  ),
                ),
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
      ),
    );
  }
}
