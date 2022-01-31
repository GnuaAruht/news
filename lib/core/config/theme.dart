import 'package:flutter/material.dart';

ThemeData buildlightTheme() {
  final baseTheme = ThemeData.light();
  return baseTheme.copyWith(
    appBarTheme: const AppBarTheme(elevation: 0.0, centerTitle: true),
  );
}
