import 'package:flutter/material.dart';
import 'package:sign_up_page_sample/main.dart';
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
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      hintText: 'Student ID',
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                  child: TextFormField(
                    obscureText: !passwordVisible,
                    decoration: InputDecoration(
                      border: const UnderlineInputBorder(),
                      hintText: 'Password',
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
