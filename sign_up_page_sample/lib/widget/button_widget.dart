// ignore_for_file: empty_constructor_bodies

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sign_up_page_sample/main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sign_up_page_sample/page/sign_in_page.dart';

class Button extends StatelessWidget {
  const Button({Key? key, required this.text, required this.onTap}): super(key: key);

  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 190.0,
      height: 60.0,
      onPressed: onTap,
      color: buttonColor,
      shape: const StadiumBorder(),
      child: Text(
        text,
        style: GoogleFonts.poppins(
          textStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
            color: textColor,
          ),
        ),
      ),
    );
  }
  }

