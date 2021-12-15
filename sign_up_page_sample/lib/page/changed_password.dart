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
          child: Container(
            margin: const EdgeInsets.all(400.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Center(
                      child: Text(
                          'Password changed successfully',
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
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
                    text: 'Back to Home Page',
                    onTap: (){
                      Navigator.pop(context);
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
