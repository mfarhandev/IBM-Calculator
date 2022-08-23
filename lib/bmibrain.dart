import 'dart:math';

class BMIBrain {
  final int height;
  final int weight;
  BMIBrain({required this.height, required this.weight});
  late double _bmi;
  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getresult() {
    if (_bmi >= 25) {
      return "Overweight";
    } else if (_bmi > 18) {
      return "Normal";
    } else {
      return "underwieght";
    }
  }

  String getinterpretation()
  {
    if (_bmi >= 25) {
      return "You have a higher than normal body weight. Try to exercise more.";
    } else if (_bmi > 18) {
      return "You have a normal body weight. Good job!";
    } else {
      return "You have a lower than normal body weight. You can eat a bit more ";
    }
  }
}
