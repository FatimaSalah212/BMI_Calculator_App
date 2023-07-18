import 'package:bmi_calculator/contants.dart';
import 'package:flutter/material.dart';

class CardDetails extends StatelessWidget {
  const CardDetails({super.key, required this.icon, required this.data});

  final IconData icon;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        Text(
          data,
          style: kLabelText,
        )
      ],
    );
  }
}
