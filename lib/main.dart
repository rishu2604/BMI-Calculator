import 'package:bmi/bmi_calculator_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Bmi());
}

class Bmi extends StatelessWidget {
  const Bmi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BmiCalculator(),
    );
  }
}
