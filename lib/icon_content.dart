import 'package:flutter/material.dart';
import 'constants.dart';

class iconContent extends StatelessWidget {
  final IconData iconImage;
  final String iconText;

  iconContent({required this.iconImage, required this.iconText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconImage,
          size: 80,
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          iconText,
          style: labelTextStyle,
        )
      ],
    );
  }
}
