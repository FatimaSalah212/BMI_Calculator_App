import 'package:bmi_calculator/contants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
  int weight = 60;
  int age = 20;

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
                          SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                              inactiveTrackColor: kInactiveColorSlider,
                              activeTrackColor: kActiveColorSlider,
                              thumbColor: kThumbColor,
                              overlayColor: kOverlayColor,
                              thumbShape: const RoundSliderThumbShape(
                                  enabledThumbRadius: 15.0),
                              overlayShape: const RoundSliderOverlayShape(
                                  overlayRadius: 30.0),
                            ),
                            child: Slider(
                                value: height.toDouble(),
                                min: 120.0,
                                max: 220.0,
                                onChanged: (double newValue) {
                                  setState(() {
                                    height = newValue.round();
                                  });
                                }),
                          )
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
                        children: [
                          const Text(
                            'WEIGHT',
                            style: kLabelText,
                          ),
                          Text(
                            weight.toString(),
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundButton(
                                icon: FontAwesomeIcons.minus,
                                onpress: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                              ),
                              const SizedBox(
                                width: 15.0,
                              ),
                              RoundButton(
                                icon: FontAwesomeIcons.plus,
                                onpress: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                              ),
                            ],
                          ),
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
                        children: [
                          const Text(
                            'AGE',
                            style: kLabelText,
                          ),
                          Text(
                            age.toString(),
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundButton(
                                icon: FontAwesomeIcons.minus,
                                onpress: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                              ),
                              const SizedBox(
                                width: 15.0,
                              ),
                              RoundButton(
                                icon: FontAwesomeIcons.plus,
                                onpress: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                              ),
                            ],
                          ),
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

class RoundButton extends StatelessWidget {
  const RoundButton({super.key, required this.icon, required this.onpress});

  final IconData icon;
  final VoidCallback onpress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onpress,
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: const CircleBorder(),
      fillColor: const Color(0xFF4C4F5E),
      child: Icon(icon),
    );
  }
}
