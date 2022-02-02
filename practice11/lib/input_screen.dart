import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';


class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: kactiveCardColor,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                height: 165.0,
                width: 165.0,
              ),
              Container(
                margin: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: kactiveCardColor,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                height: 165.0,
                width: 165.0,
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: kactiveCardColor,
              borderRadius: BorderRadius.circular(10.0),
            ),
            height: 170.0,
          ),
          Row(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: kactiveCardColor,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                height: 165.0,
                width: 165.0,
              ),
              Container(
                margin: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: kactiveCardColor,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                height: 165.0,
                width: 165.0,
              ),
            ],
          ),

        ],
      ),
    );
  }
}
