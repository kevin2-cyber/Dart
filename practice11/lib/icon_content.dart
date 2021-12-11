import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const labelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Colors.white,
);

class IconContent extends StatelessWidget {
  const IconContent({
    this.icon,
    this.label,
    Key? key,
  }) : super(key: key);

  final IconData? icon;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:  <Widget>[
        FaIcon(
          icon,
          size: 80.0,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          label!,
          style: labelTextStyle,
        ),
      ],
    );
  }
}