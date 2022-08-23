import 'package:flutter/material.dart';
import '../constants.dart';

class IconContent extends StatelessWidget {

  final IconData contenticon;
  final String contenttext;
  IconContent({required this.contenticon, required this.contenttext});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          contenticon,
          size: 80,
          color: Colors.white,
        ),
        SizedBox(
          height: 15,
        ),
        Text(contenttext, style: klabelstyle),
      ],
    );
  }
}
