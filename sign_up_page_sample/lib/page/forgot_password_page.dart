import 'package:flutter/material.dart';
import 'package:sign_up_page_sample/page/changed_password.dart';
import 'package:sign_up_page_sample/widget/button_widget.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          children: <Widget>[
            Row(
              children: const <Widget>[
                Text(''),
                Text(''),
                Text(''),
                Text(''),
              ],
            ),
            Button(
                text: 'Change Passowrd',
                onTap:(){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=> const ChangedPassword()));
                } ),
          ],
      ),
    );
  }
}
