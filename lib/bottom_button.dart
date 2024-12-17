import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  final Function onTap;
  final String buttomTitle;

  const BottomButton({required this.onTap, required this.buttomTitle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onTap != null) {
          onTap!(); // Call the function if it's not null
        }
      },
      child: Container(
        color: Color(bottomContainerColor),
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: bottomContainerHeight,
        padding: EdgeInsets.only(bottom: 15),
        child: Center(
          child: Text(
            buttomTitle,
            style: KlargeTextStyle,
          ),
        ),
      ),
    );
  }
}
