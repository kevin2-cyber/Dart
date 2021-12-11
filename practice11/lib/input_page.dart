import 'package:flutter/material.dart';
import 'package:practice11/reusable_card.dart';

import 'icon_content.dart';
import 'main.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

Color maleCardColor = inactiveCardColor;
Color femaleCardColor = inactiveCardColor;

//1 = male , 2 = female
void updateColor(int gender) {
// male card pressed
  if (gender == 1) {
    if (maleCardColor == inactiveCardColor) {
      maleCardColor = activeCardColor;
      femaleCardColor = inactiveCardColor;
    } else {
      maleCardColor = inactiveCardColor;
    }
  }
  // female card pressed
  if (gender == 2) {
    if (femaleCardColor == inactiveCardColor) {
      femaleCardColor = activeCardColor;
      maleCardColor = inactiveCardColor;
    } else {
      femaleCardColor = inactiveCardColor;
    }
  }
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(BMICalculator.title),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  //TODO: Fix problem with GestureDetector widget
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(1);
                      });
                    },
                    child: const ReusableCard(
                      colour: inactiveCardColor,
                      child: IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(2);
                      });
                    },
                    child: const ReusableCard(
                      colour: inactiveCardColor,
                      child: IconContent(
                        icon: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            child: ReusableCard(colour: activeCardColor),
          ),
          Expanded(
            child: Row(
              children: const <Widget>[
                Expanded(
                  child: ReusableCard(colour: activeCardColor),
                ),
                Expanded(
                  child: ReusableCard(colour: activeCardColor),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}
