import 'package:flutter/material.dart';

import 'constants.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: kinactiveCardColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      // height: 165.0,
      // width: 165.0,
    );
  }
}
