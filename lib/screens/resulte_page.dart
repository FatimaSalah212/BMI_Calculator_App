import 'package:bmi_calculator/contants.dart';

import 'package:flutter/material.dart';

import '../components/bottom_button.dart';
import '../components/my_container.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
        centerTitle: true,
        // leading: const Icon(FontAwesomeIcons.bars),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.all(15.0),
            child: const Text(
              'Your Result',
              style: TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: MyContainer(
                color: kActiveCardColor,
                cardWidget: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      'Normal',
                      style: kTitleTextStyle,
                    ),
                    Text(
                      '22.1',
                      style: kBMIResultTextStyle,
                    ),
                    Text(
                      'You Have Normal Body Weight.',
                      style: kBodyTextStyle,
                    )
                  ],
                ),
                onpress: () {}),
          ),
          BottomButton(
            data: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
