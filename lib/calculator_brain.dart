import 'package:flutter/cupertino.dart';
import 'dart:math';

class CalculatorBrain {
  CalculatorBrain(this.height, this.weight);

  final int height;
  final int weight;

  double? _bmi;

  // Method to calculate BMI
  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2); // Store the BMI in _bmi
    return _bmi!
        .toStringAsFixed(1); // Use ! because _bmi will never be null here
  }

  // Method to get the result based on BMI
  String getResult() {
    if (_bmi == null) calculateBMI(); // Ensure _bmi is calculated

    if (_bmi! >= 25) {
      return "You are overweight";
    } else if (_bmi! > 18.5) {
      return "Normal";
    } else {
      return "Underweight";
    }
  }

  // Method to get interpretation based on BMI
  String getInterpretation() {
    if (_bmi == null) calculateBMI(); // Ensure _bmi is calculated

    if (_bmi! >= 25) {
      return "You have a higher than normal body weight. Try to exercise more.";
    } else if (_bmi! > 18.5) {
      return "You have a normal body weight. Good job!";
    } else {
      return "You have a lower than normal body weight. You can eat a bit more.";
    }
  }
}
