import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              MyContainer(),
              MyContainer(),
            ],
          ),
          Row(
            children: const [MyContainer()],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              MyContainer(),
              MyContainer(),
            ],
          ),
        ],
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  const MyContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(15.0),
        width: 170.0,
        height: 200.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: const Color(0xFF111428)),
      ),
    );
  }
}
