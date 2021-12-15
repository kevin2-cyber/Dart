import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sign_up_page_sample/page/forgot_password_page.dart';
import 'package:sign_up_page_sample/page/theme.dart';
import 'package:sign_up_page_sample/page/welcome.dart';
import 'package:sign_up_page_sample/widget/button_widget.dart';


class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool passwordVisible = false;

  void togglePassword() {
    setState(() {
      passwordVisible = !passwordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            margin: const EdgeInsets.only(left: 50.0, right: 50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                  child: TextFormField(
                    decoration: InputDecoration(
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black12,
                        ),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: buttonColor,
                        ),
                      ),
                      hintText: 'Student ID',
                      hintStyle: GoogleFonts.poppins(
                        color: buttonColor,
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                  child: TextFormField(
                    obscureText: !passwordVisible,
                    decoration: InputDecoration(
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black12,
                        ),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: buttonColor,
                        ),
                      ),
                      focusColor: buttonColor,
                      hintText: 'Password',
                      hintStyle: GoogleFonts.poppins(
                        color: buttonColor,
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      suffixIcon: IconButton(
                        onPressed: togglePassword,
                        icon: Icon(passwordVisible
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50.0,
                ),
                Button(
                  text: 'Log In',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=> const WelcomePage()));
                  },
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Center(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context)=> const ForgotPassword())
                          );
                        },
                        child: Text(
                            'FORGOT PASSWORD?',
                            style: GoogleFonts.poppins(
                              color: buttonColor,
                              textStyle:  const TextStyle(
                                fontSize: 20.0,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
