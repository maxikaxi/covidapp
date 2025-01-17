import 'package:flutter/material.dart';

class AppColors {
  static Color primaryWhite = Color(0xFFCADCED);
  // static Color primaryWhite = Colors.indigo[100];



  static List pieColors = [
    Colors.indigo[400],
    Colors.blue,
    Colors.green,
    Colors.amber,
    Colors.deepOrange,
    Colors.brown,
  ];
  static List<BoxShadow> neumorpShadow = [
    BoxShadow(
        color: Colors.white.withOpacity(0.5), spreadRadius: -5, offset: Offset(-5, -5), blurRadius: 30),
    BoxShadow(
        color: Colors.blue[900]!.withOpacity(0.2),
        spreadRadius: 2,

        offset: Offset(7, 7),
        blurRadius: 20)
  ];
}