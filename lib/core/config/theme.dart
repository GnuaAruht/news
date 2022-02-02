import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData buildlightTheme(BuildContext context) {
  final baseTheme = ThemeData.light();
  return baseTheme.copyWith(
      textTheme: GoogleFonts.manropeTextTheme(
        Theme.of(context).textTheme,
      ),
      appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 20.0),
          elevation: 0.0,
          centerTitle: true),
      colorScheme: const ColorScheme.light(
        primary: Colors.white,
      ));
}
