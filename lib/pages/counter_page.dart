import 'package:animals_now_test/providers/counter_provider.dart';
import 'package:animals_now_test/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../header.dart';

class CounterPage extends StatelessWidget {
  final int index;
  CounterPage({this.index});

  @override
  Widget build(BuildContext context) {
    int counter = CounterProvider.read(context, index);

    return Scaffold(
      appBar: Header('Counter page: ${index + 1}'),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(48),
          decoration: BoxDecoration(
            color: ThemeColors.primaryColor,
            borderRadius: BorderRadius.all(
              Radius.circular(16.0),
            ),
          ),
          child: Text(
            '$counter',
            style: TextStyle(
              fontFamily: 'SF Pro Display',
              fontSize: 48.0,
              color: ThemeColors.secondary,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.normal,
              letterSpacing: 0.18,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => CounterProvider.increment(context, index),
        child: Icon(Icons.plus_one),
        backgroundColor: ThemeColors.primaryColor,
      ),
    );
  }
}
