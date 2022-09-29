import 'dart:math';

import 'package:flutter/material.dart';

class ShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.teal
      ..strokeWidth = 5
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    // Offset startingPoint = Offset(0, size.height / 2);
    // Offset endingPoint = Offset(size.width, size.height / 2);

    // Offset center = Offset(size.width / 2, size.height / 2);

    // canvas.drawLine(startingPoint, endingPoint, paint);
    // canvas.drawCircle(center, 50, paint);

    var path = Path();
    int sides = 3;
    int radius = 100;
    var angle = (pi * 2) / sides;

    Offset center2 = Offset(size.width / 2, size.height / 2);

    // startPoint => (100.0, 0.0)
    Offset startPoint = Offset(radius * cos(0.0), radius * sin(0.0));

    path.moveTo(startPoint.dx + center2.dx, startPoint.dy + center2.dy);

    for (int i = 1; i <= sides; i++) {
      double x = radius * cos(angle * i) + center2.dx;
      double y = radius * sin(angle * i) + center2.dy;
      path.lineTo(x, y);
    }
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
