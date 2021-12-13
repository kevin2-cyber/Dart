import 'package:flutter/material.dart';
import 'package:practice11/reusable_card.dart';

import 'constants.dart';
import 'icon_content.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

Color maleCardColor = kinactiveCardColor;
Color femaleCardColor = kinactiveCardColor;

//1 = male , 2 = female
void updateColor(int gender) {
// male card pressed
  if (gender == 1) {
    if (maleCardColor == kinactiveCardColor) {
      maleCardColor = kactiveCardColor;
      femaleCardColor = kinactiveCardColor;
    } else {
      maleCardColor = kinactiveCardColor;
    }
  }
  // female card pressed
  if (gender == 2) {
    if (femaleCardColor == kinactiveCardColor) {
      femaleCardColor = kactiveCardColor;
      maleCardColor = kinactiveCardColor;
    } else {
      femaleCardColor = kinactiveCardColor;
    }
  }
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Center(
          child: Text(title),
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
                      colour: kinactiveCardColor,
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
                      colour: kinactiveCardColor,
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
            child: ReusableCard(colour: kactiveCardColor),
          ),
          Expanded(
            child: Row(
              children: const <Widget>[
                Expanded(
                  child: ReusableCard(colour: kactiveCardColor),
                ),
                Expanded(
                  child: ReusableCard(colour: kactiveCardColor),
                ),
              ],
            ),
          ),
          Container(
            color: kbottomContainerColor,
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: kbottomContainerHeight,
          ),
        ],
      ),
    );
  }
}
