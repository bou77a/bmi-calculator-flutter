import 'dart:js_interop';
import 'package:bmi_calculator/bottom_button.dart';

import 'constants.dart';
import 'reusable_card.dart';

import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage(
      {required this.interpretation,
      required this.bmiResult,
      required this.resultText});

  final String interpretation;
  final String bmiResult;
  final String resultText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.only(left: 30),
            alignment: Alignment.bottomLeft,
            child: Text(
              "YOUR RESULT",
              style: KtitleTrstStyle,
            ),
          ),
          Expanded(
            flex: 5,
            child: reusableCard(
              colour: Color(activeCardColor),
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText,
                    style: KResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: KBmiTextStyle,
                  ),
                  Text(
                    interpretation,
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                  BottomButton(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      buttomTitle: "RE-CALCULATE")
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
