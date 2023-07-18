import 'package:bmi_calculator/contants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'card_details.dart';
import 'my_container.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  int height = 180;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('BMI CALCULATOR'),
          centerTitle: true,
        ),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: MyContainer(
                      onpress: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      color: selectedGender == Gender.male
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      cardWidget: const CardDetails(
                        icon: FontAwesomeIcons.mars,
                        data: 'MALE',
                      ),
                    ),
                  ),
                  Expanded(
                    child: MyContainer(
                        onpress: () {
                          setState(() {
                            selectedGender = Gender.female;
                          });
                        },
                        color: selectedGender == Gender.female
                            ? kActiveCardColor
                            : kInactiveCardColor,
                        cardWidget: const CardDetails(
                          data: 'FEMALE',
                          icon: FontAwesomeIcons.venus,
                        )),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: MyContainer(
                      onpress: () {},
                      cardWidget: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'HEIGHT',
                            style: kLabelText,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                height.toString(),
                                style: kNumberTextStyle,
                              ),
                              const Text(
                                'cm',
                                style: kLabelText,
                              )
                            ],
                          ),
                          Slider(
                              value: height.toDouble(),
                              min: 120.0,
                              max: 220.0,
                              activeColor: kActiveColorSlider,
                              inactiveColor: kInactiveColorSlider,
                              onChanged: (double newValue) {
                                setState(() {
                                  height = newValue.round();
                                });
                              })
                        ],
                      ),
                      color: kActiveCardColor,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: MyContainer(
                      onpress: () {},
                      cardWidget: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            FontAwesomeIcons.mars,
                            size: 80.0,
                          ),
                          Text(
                            'Mela',
                            style: TextStyle(color: Color(0xff8E8F99)),
                          )
                        ],
                      ),
                      color: kActiveCardColor,
                    ),
                  ),
                  Expanded(
                    child: MyContainer(
                      onpress: () {},
                      cardWidget: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            FontAwesomeIcons.mars,
                            size: 80.0,
                          ),
                          Text(
                            'Mela',
                            style: TextStyle(color: Color(0xff8E8F99)),
                          )
                        ],
                      ),
                      color: kActiveCardColor,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: kButtonColor,
              width: double.infinity,
              height: kButtonContainarHeight,
            )
          ],
        ),
      ),
    );
  }
}
