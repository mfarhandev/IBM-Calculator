import 'package:flutter/material.dart';
import 'screens/input_page.dart';
void main ()
{

  runApp(IBMCalculator());
}

class IBMCalculator extends StatelessWidget {
  const IBMCalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        appBarTheme: AppBarTheme(backgroundColor:Color(0xFF0A0E21)),
        textTheme: TextTheme(bodyText2: TextStyle(color: Colors.white))
      ),
      home: InputPage(),
    );
  }
}



