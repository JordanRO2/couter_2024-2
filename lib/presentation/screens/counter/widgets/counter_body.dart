import 'package:flutter/material.dart';
import 'counter_text.dart';
import 'counter_label.dart';

class CounterBody extends StatelessWidget {
  final int clickCounter;

  const CounterBody({Key? key, required this.clickCounter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CounterText(clickCounter: clickCounter),
          CounterLabel(clickCounter: clickCounter),
        ],
      ),
    );
  }
}
