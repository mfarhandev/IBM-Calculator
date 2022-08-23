import 'package:flutter/material.dart';
import 'package:ibm_calculator/components/bottom_button.dart';
import 'package:ibm_calculator/constants.dart';
import 'package:ibm_calculator/components/reuseable_container.dart';


class ResultsPage extends StatelessWidget {
  final String bmiresult;
  final String resulttext;
  final String interpretation;

   ResultsPage({required this.bmiresult,required this.resulttext,required this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("BMI Calculator")),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15),
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Your Result",
                  style: kresulttitle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReuseableContainer(
                colour: kactivecardcolor,
                cardwidget: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      resulttext.toUpperCase(),
                      style: kreulttext,
                    ),
                    Text(
                      bmiresult,
                      style: kreultnumber,
                    ),
                    Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: kreultdescription,
                    ),
                  ],
                ),
              ),
            ),
            BottomButton(
                name: "RE - CALCULATE",
                onPressed: () {
                  Navigator.pop(context);
                })
          ],
        ));
  }
}
