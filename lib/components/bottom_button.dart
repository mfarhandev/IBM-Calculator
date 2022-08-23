import 'package:flutter/material.dart';
import 'package:ibm_calculator/constants.dart';

class BottomButton extends StatelessWidget {
  final String name;
  final VoidCallback onPressed;
   BottomButton({required this.name,required this.onPressed}) ;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: Center(child: Text(name,style: klargebutton,)),
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.only(bottom: 20),
        width: double.infinity,
        height: kbottomcontainerheight,
        color: kbottomcontainercolor,
      ),
    );
  }
}
