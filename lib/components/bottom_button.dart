import 'package:flutter/material.dart';

import '../contants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    Key? key,
    required this.data,
    required this.onTap,
  }) : super(key: key);

  final String data;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kButtonColor,
        width: double.infinity,
        height: kButtonContainarHeight,
        child: Center(
          child: Text(
            data,
            style: kButtonStyle,
          ),
        ),
      ),
    );
  }
}
