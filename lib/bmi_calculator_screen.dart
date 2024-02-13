import 'package:bmi/constants.dart';
import 'package:bmi/gender_selection_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BmiCalculator extends StatefulWidget {
  const BmiCalculator({super.key});
  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  bool isMale = true;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "BMI Calculator",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: backgroundColor,
      ),
      body: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                isMale = true;
                setState(() {});
              },
              child: GenderSelectionWidget(
                width: width,
                isMale: true,
                backgroundColor: isMale ? cardColor : backgroundColor,
              ),
            ),
            GestureDetector(
              onTap: () {
                isMale = false;
                setState(() {});
              },
              child: GenderSelectionWidget(
                width: width,
                isMale: false,
                backgroundColor: !isMale ? cardColor : backgroundColor,
              ),
            ),
          ],
        )
      ]),
    );
  }
}
