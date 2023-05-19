import 'dart:math';

class Calculator {
  Calculator({this.height, this.mass});
  final int? height;
  final int? mass;
  double _bmi = 0;

  String calculateBMI() {
    _bmi = mass! / pow(height! / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25.00) {
      return 'Overweight';
    } else if (_bmi > 18.50) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25.00) {
      return 'Overweight!';
    } else if (_bmi > 18.50) {
      return 'Normal!';
    } else {
      return 'Underweight!';
    }
  }
}
