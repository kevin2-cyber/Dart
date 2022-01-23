
import 'package:flutter/material.dart';


class ReusableCard extends StatelessWidget {
  const ReusableCard({required this.colour, required this.child, Key? key}) : super(key: key);

  final Color colour;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}