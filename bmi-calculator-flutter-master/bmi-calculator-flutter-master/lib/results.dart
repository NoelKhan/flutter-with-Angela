import 'package:bmi_calculator/input.dart';
import 'package:bmi_calculator/main.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class Results extends StatelessWidget {
  Results(
      {@required this.BMI_result,
      @required this.BMI_text,
      @required this.BMI_description});

  final String BMI_result;
  final String BMI_text;
  final String BMI_description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: titleStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: activeCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    BMI_text.toUpperCase(),
                    style: resultTextStyle,
                  ),
                  Text(
                    BMI_result,
                    style: BMITextStyle,
                  ),
                  Center(
                    child: Text(
                      BMI_description,
                      style: BMIOutputTextStyle,
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              buttonTitle: 'Re - Calculate'),
        ],
      ),
    );
  }
}
