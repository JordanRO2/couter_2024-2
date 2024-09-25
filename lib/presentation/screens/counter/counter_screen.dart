import 'package:flutter/material.dart';
import 'package:primer_app_2024_2/presentation/presenters/counter_presenter.dart';
import 'package:primer_app_2024_2/models/counter_model.dart'; // Cambiado a domain/models
import 'package:primer_app_2024_2/presentation/screens/counter/widgets/counter_body.dart'; // Ruta correcta a widgets
import 'package:primer_app_2024_2/presentation/screens/counter/widgets/counter_fab.dart'; // Ruta correcta a widgets
import 'package:primer_app_2024_2/presentation/screens/counter/widgets/counter_appbar.dart'; // Ruta correcta a widgets

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  late final CounterPresenter _presenter;
  final CounterModel _model = CounterModel();

  @override
  void initState() {
    super.initState();
    _presenter = CounterPresenter(_model, () {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CounterAppBar(resetCounter: _presenter.reset),
      body: CounterBody(clickCounter: _presenter.counter),
      floatingActionButton: CounterFAB(
        incrementCounter: _presenter.increment,
        decrementCounter: _presenter.decrement,
        resetCounter: _presenter.reset,
      ),
    );
  }
}
