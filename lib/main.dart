import 'package:flutter/material.dart';
import 'package:primer_app_2024_2/presentation/screens/counter/counter_screen.dart';

void main() {
  runApp(const AppExample3());
}

class AppExample3 extends StatelessWidget {
  const AppExample3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorSchemeSeed: Colors.black),
      home: const CounterScreen(),
    );
  }
}
