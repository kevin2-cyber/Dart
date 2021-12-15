import 'package:flutter/material.dart';
import 'package:sign_up_page_sample/page/home_page.dart';
import 'package:sign_up_page_sample/page/theme.dart';


void main() => runApp(const UGEvote());

class UGEvote extends StatelessWidget {
  const UGEvote({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: themeData,
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
