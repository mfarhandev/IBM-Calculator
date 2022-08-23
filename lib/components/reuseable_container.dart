import 'package:flutter/material.dart';

class ReuseableContainer extends StatelessWidget {
  final Color colour;
  final Widget cardwidget;
  ReuseableContainer({required this.colour, required this.cardwidget});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10),
      ),
      child: cardwidget,
    );
  }
}
