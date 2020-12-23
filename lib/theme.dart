import 'package:flutter/material.dart';

class ThemeColors {
  static Color primaryColor = Color.fromRGBO(106, 50, 115, 1.0);
  static Color secondary = Color.fromRGBO(249, 180, 39, 1.0);

  static Color errorColor = Colors.redAccent.shade100;
}

ThemeData defaultMaterialAppTheme = ThemeData.light();

ThemeData theme = ThemeData(
  primaryColor: ThemeColors.primaryColor,
  accentColor: ThemeColors.primaryColor,
  scaffoldBackgroundColor: Colors.grey.shade200,
  errorColor: ThemeColors.errorColor,
  dividerColor: Colors.white,
);
