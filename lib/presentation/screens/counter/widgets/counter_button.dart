import 'package:flutter/material.dart';

class CounterButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;

  const CounterButton({Key? key, required this.onPressed, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
