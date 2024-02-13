import 'package:bmi/age_weight_widget.dart';
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
  int weight = 70;
  int age = 18;
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
      body: Column(
        children: [
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
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AgeWeightWidget(
                title: 'Weight',
                val: weight,
                onremoveTap: () => addWeight(false),
                onAddTap: () => addWeight(true),
              ),
              AgeWeightWidget(
                title: 'Age',
                val: age,
                onremoveTap: () => addAge(false),
                onAddTap: () => addAge(true),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void addAge(bool isAdd) {
    isAdd ? age++ : age--;
    setState(() {});
  }

  void addWeight(bool isAdd) {
    isAdd ? weight++ : weight--;
    setState(() {});
  }
}


// Slider(
//   min: 100,
//   max: 200,
//   value: height,
//   onChanged: (value){
//     height = value;
//     setState(() {});
//   }
// )


// const Spacer(),
// GestureDetector(
//   onTap: (){
//     final bmi = weight / ((height/100)*(height/100));
//     print(bmi);
//     Navigator.of(context).push(
//       MaterialPageRoute(builder: ())
//     )
//   }
// )
// Container(
//   height: 80,
//   width: width,
//   color: Colors.pink,
//   child: Const Center(
//     child: Text("Calculate BMI")
//   )
// )
