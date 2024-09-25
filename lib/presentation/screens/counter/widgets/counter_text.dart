import 'package:flutter/material.dart';

class CounterText extends StatelessWidget {
  final int clickCounter;

  const CounterText({Key? key, required this.clickCounter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '$clickCounter',
      style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
    );
  }
}
