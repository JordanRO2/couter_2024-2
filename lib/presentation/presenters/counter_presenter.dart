import 'package:flutter/foundation.dart'; // Para poder usar VoidCallback
import 'package:primer_app_2024_2/models/counter_model.dart';

class CounterPresenter {
  final CounterModel _model;
  final VoidCallback onUpdate;

  CounterPresenter(this._model, this.onUpdate);

  int get counter => _model.counter;

  void increment() {
    _model.increment();
    onUpdate();
  }

  void decrement() {
    _model.decrement();
    onUpdate();
  }

  void reset() {
    _model.reset();
    onUpdate();
  }
}
