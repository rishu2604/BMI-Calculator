// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:bmi/constants.dart';
import 'package:flutter/material.dart';

class AgeWeightWidget extends StatelessWidget {
  const AgeWeightWidget({
    super.key,
    required this.title,
    required this.val,
    required this.onremoveTap,
    required this.onAddTap,
  });

  final String title;
  final int val;
  final Function() onremoveTap;
  final Function() onAddTap;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.all(4.0),
      child: Container(
          width: width * 0.3,
          height: width * 0.3,
          child: Column(children: [
            Text(
              "$title",
              style: titleTextStyle,
            ),
            Text(
              "$val",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: onAddTap,
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.add),
                  ),
                ),
                GestureDetector(
                  onTap: onremoveTap,
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.remove),
                  ),
                ),
              ],
            ),
          ]),
          decoration: BoxDecoration(
            color: cardColor,
            borderRadius: BorderRadius.circular(10),
          )),
    );
  }
}
