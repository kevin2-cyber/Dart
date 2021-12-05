import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sign_up_page_sample/widget/button_widget.dart';

class ChangedPassword extends StatelessWidget {
  const ChangedPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Center(
                    child: Container(
                      padding: const EdgeInsets.only(left: 400.0),
                      child: Text(
                          'Password changed successfully',
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  const Icon(
                    Icons.check_circle,
                    color: Colors.green,
                    size: 50.0,
                  ),
                ],
              ),
              const SizedBox(
                height: 100.0,
              ),
              Button(
                  text: 'Home Page',
                  onTap: (){
                    Navigator.pop(context);
                  }
              ),
            ],
          ),
        ),
      ),
    );
  }
}
