import 'package:flutter/painting.dart';

class Stroke {
  final Offset startPoint;
  final Offset endPoint;
  final Offset? controlPoint1; // Optional for quadratic curves
  final Offset? controlPoint2; // Optional for cubic curves

  Stroke(this.startPoint, this.endPoint, [this.controlPoint1, this.controlPoint2]);
}

class AlphabetPath {
  final String letter;
  final List<Stroke> strokes;

  AlphabetPath({required this.letter, required this.strokes});
}
