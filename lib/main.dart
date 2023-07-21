import 'package:bmi_calculator/screens/input_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        // primaryColor: const Color(0xFF0A0D22),
        scaffoldBackgroundColor: const Color(0xFF0A0D22),
        appBarTheme: const AppBarTheme(color: Color(0xFF0A0D22)),
      ),
      home: const InputPage(),
    );
  }
}
