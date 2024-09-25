import 'package:flutter/material.dart';
import 'counter_button.dart';

class CounterFAB extends StatelessWidget {
  final VoidCallback incrementCounter;
  final VoidCallback decrementCounter;
  final VoidCallback resetCounter;

  const CounterFAB({
    Key? key,
    required this.incrementCounter,
    required this.decrementCounter,
    required this.resetCounter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        CounterButton(onPressed: incrementCounter, icon: Icons.plus_one),
        const SizedBox(height: 18),
        CounterButton(onPressed: decrementCounter, icon: Icons.exposure_minus_1),
        const SizedBox(height: 18),
        CounterButton(onPressed: resetCounter, icon: Icons.refresh_rounded),
      ],
    );
  }
}
