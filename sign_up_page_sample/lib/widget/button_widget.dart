import 'package:flutter/material.dart';
import 'package:sign_up_page_sample/main.dart';
import 'package:google_fonts/google_fonts.dart';

class Button extends StatelessWidget {
  const Button({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      width: 170.0,
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: TextButton(
        onPressed: (){},
        child: Text(
            text,
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
              color: textColor,
              fontSize: 20.0,
            )
          ),
        ),
      ),
    );
  }
}
