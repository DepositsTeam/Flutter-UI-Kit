import 'package:flutter/material.dart';

class Sector {
  final Color color;
  final double value;
  final String title;

  Sector({required this.color, required this.value, required this.title});
}

// class PricePoint {
//   final double x;
//   final double y;
//   final String title;
//    final Color color;

//   PricePoint({required this.x, required this.y, required this.color,
//       required this.title
//   });
// }

class PricePoint {
  final double x;
  final double y;

  PricePoint({required this.x, required this.y});
}
