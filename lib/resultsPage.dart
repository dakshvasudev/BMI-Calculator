import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusable_card.dart';
import 'bottomButton.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;

  ResultsPage({required this.bmiResult,required this.resultText,required this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kActiveCardColor,
        title: const Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(10.0),
              child: const Text(
                'Your Results:',
                style: kTitleTextStyle,
              ),

            ),
          ),
          Expanded(
            flex: 5,
            child: reusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                   Text(
                    bmiResult,
                    style: kResultTextStyle,
                  ),
                   Text(resultText,style: kBMITextStyle,),
                   Text(interpretation,style: kBodyTextStyle,textAlign: TextAlign.center,),
                ],
              ),
            ),
          ),
          BottomButton(
            text: 'RE-CALCULATE',
            navigate: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
