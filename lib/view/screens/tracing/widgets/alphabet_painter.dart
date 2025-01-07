import 'dart:ui';
import 'package:flutter/material.dart';
import '../../../../models/alphabet_path.dart';

class AlphabetPainter extends CustomPainter {
  final List<Stroke> strokes;

  
  AlphabetPainter(this.strokes);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    for (var stroke in strokes) {
      Path path = Path();
      path.moveTo(stroke.startPoint.dx, stroke.startPoint.dy);
      
      if (stroke.controlPoint1 != null) {
        if (stroke.controlPoint2 != null) {
    
          path.cubicTo(
            stroke.controlPoint1!.dx,
            stroke.controlPoint1!.dy,
            stroke.controlPoint2!.dx,
            stroke.controlPoint2!.dy,
            stroke.endPoint.dx,
            stroke.endPoint.dy,
          );
        } else {
  
          path.quadraticBezierTo(
            stroke.controlPoint1!.dx,
            stroke.controlPoint1!.dy,
            stroke.endPoint.dx,
            stroke.endPoint.dy,
          );
        }
      } else {
      
        path.lineTo(stroke.endPoint.dx, stroke.endPoint.dy);
      }

      // path with dashed lines
      _drawDashedPath(canvas, path, paint);
    }
  }

  //  draw a dashed path
  void _drawDashedPath(Canvas canvas, Path path, Paint paint) {
    const dashWidth = 6.0;
    const dashSpace = 9.0;
    double distance = 0.2;

    for (PathMetric pathMetric in path.computeMetrics()) {
      while (distance < pathMetric.length) {
        final start = distance;
        final end = distance + dashWidth;
        canvas.drawPath(
          pathMetric.extractPath(start, end),
          paint,
        );
        distance += dashWidth + dashSpace;
      }
      distance = 0; 
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true; 
  }
}

