import 'dart:async';

import 'package:animals_now_test/navigators/bottom_bar_navigator.dart';
import 'package:animals_now_test/providers/counter_provider.dart';
import 'package:animals_now_test/theme.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runZoned(() {
    runApp(
      MultiProvider(
        providers: [
          CounterProvider.provider,
        ],
        child: Theme(
          data: defaultMaterialAppTheme,
          child: MaterialApp(
            theme: theme,
            title: 'Animals Now',
            home: BottomBarNavigator(),
          ),
        ),
      ),
    );
  }, onError: (Object error, StackTrace stackTrace) async {
    print(error);
  });
}
