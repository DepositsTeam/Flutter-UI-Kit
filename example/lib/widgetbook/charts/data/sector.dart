import 'dart:math';
import 'package:deposits_ui_kit/deposits_ui_kit.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

List<double> get randomNumbers {
  final Random random = Random();
  final randomNumbers = <double>[];
  for (var i = 1; i <= 7; i++) {
    randomNumbers.add(random.nextDouble() * 100);
  }

  return randomNumbers;
}

List<Sector> get industrySectors {
  return [
    Sector(color: blue500, value: randomNumbers[6], title: 'Product 1'),
    Sector(color: green500, value: randomNumbers[3], title: 'Product 2'),
    Sector(color: orange500, value: randomNumbers[5], title: 'Product 3'),
    Sector(color: red500, value: randomNumbers[4], title: 'Product 4'),
  ];
}

List<Sector> get invoiceSectors {
  return [
    Sector(color: blue500, value: randomNumbers[6], title: 'Draft'),
    Sector(color: green500, value: randomNumbers[3], title: 'Paid'),
    Sector(color: orange500, value: randomNumbers[5], title: 'Scheduled'),
    Sector(color: red500, value: randomNumbers[4], title: 'Unpaid'),
    Sector(color: gray200, value: randomNumbers[4], title: 'Void'),
  ];
}

List<Sector> get halfSectors {
  return [
    Sector(color: blue500, value: 60, title: 'Product 1'),
    Sector(color: green500, value: 60, title: 'Product 2'),
    Sector(color: orange500, value: 60, title: 'Product 3'),
  ];
}

List<PricePoint> get pricePoints {
  final Random random = Random();
  final randomNumbers = <double>[];
  for (var i = 0; i <= 30; i++) {
    randomNumbers.add(random.nextDouble());
  }

  return randomNumbers
      .mapIndexed(
          (index, element) => PricePoint(x: index.toDouble(), y: element))
      .toList();
}

// List<PricePoint> get pricePoints {
//   final Random random = Random();
//   final randomNumbers = <double>[];
//   for (var i = 0; i <= 11; i++) {
//     randomNumbers.add(random.nextDouble());
//   }

//   final List<Color> randomColors = [Colors.blue, Colors.green, Colors.orange];

//   final List<String> monthNames = [
//     'Product 1',
//     'Product 2',
//     'Product 3',
//   ];

//   final List<PricePoint> pricePoints = [];

//   for (var i = 0; i < randomNumbers.length; i++) {
//     final index = i % randomColors.length;
//     pricePoints.add(
//       PricePoint(
//         x: i.toDouble(),
//         y: randomNumbers[i],
//         color: randomColors[index],
//         title: monthNames[index],
//       ),
//     );
//   }

//   return pricePoints;
// }
