import 'package:bmi_calculator/input_page.dart';
import 'package:flutter/material.dart';

class reusableCard extends StatelessWidget {
  final Color? colour;
  final Widget? cardChild;
  final Function? onPress;

  reusableCard({required this.colour, this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onPress != null) {
          onPress!(); // Call the function if it's not null
        }
      },
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: colour, borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}
