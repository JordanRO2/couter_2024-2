import 'package:flutter/material.dart';

class CounterLabel extends StatelessWidget {
  final int clickCounter;

  const CounterLabel({Key? key, required this.clickCounter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      clickCounter != 1 ? 'Clicks' : 'Click',
      style: const TextStyle(fontSize: 25),
    );
  }
}
