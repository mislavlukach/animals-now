import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterProvider extends ChangeNotifier {
  List<int> counters = [0, 0, 0];

  void add(int i) {
    counters[i] = counters[i] + 1;
    notifyListeners();
  }

  static ChangeNotifierProvider<CounterProvider> get provider =>
      ChangeNotifierProvider(create: (context) => CounterProvider());

  static void increment(context, int index) =>
      Provider.of<CounterProvider>(context, listen: false).add(index);

  static int read(context, int index) =>
      Provider.of<CounterProvider>(context, listen: true).counters[index];
}
