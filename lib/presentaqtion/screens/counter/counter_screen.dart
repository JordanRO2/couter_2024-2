import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCounter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Counter screen"),
          leading: IconButton(
              onPressed: () {
                setState(() {
                  clickCounter = 0;
                });
              },
              icon: const Icon(Icons.refresh_rounded))),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$clickCounter',
            style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
          ),
          Text(
            clickCounter != 1 ? 'Clicks' : 'Click',
            style: const TextStyle(fontSize: 25),
          )
        ],
      )),
      floatingActionButton: FloatingActionButton(
          shape: const StadiumBorder(),
          onPressed: () {
            setState(() {
              clickCounter += 1;
            });
          },
          child: const Icon(Icons.plus_one_sharp)),
    );
  }
}
