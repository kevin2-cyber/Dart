import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sign_up_page_sample/page/sign_in_page.dart';
import 'package:sign_up_page_sample/page/theme.dart';
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
            Container(
              height: 200.0,
              width: 200.0,
              decoration: const BoxDecoration(
                color: Colors.white12,
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(200.0), bottomLeft: Radius.circular(200.0), topRight: Radius.circular(200.0),),
              ),
            ),
            Container(
              height: 180.0,
              width: 180,
              decoration: const BoxDecoration(
                color: topSideColor,
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(200.0),bottomLeft: Radius.circular(200.0), topRight: Radius.circular(200.0),),
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
                Center(
                  child: Text(
                      'Participate in campus\n        elections easily',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        color: buttonColor,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50.0,
                ),
                Button(
                    text: 'Log In',
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=> const SignInPage()));
                    },
                )
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