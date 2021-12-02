import 'package:flutter/material.dart';
import 'package:sign_up_page_sample/page/home_page.dart';

const textColor = Color(0xFFFEFAF5);
const topSideColor = Color(0xFFFCF5ED);
const buttonColor = Color(0xFF190159);

void main() => runApp(const UGEvote());

class UGEvote extends StatelessWidget {
  const UGEvote({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
