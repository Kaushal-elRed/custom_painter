import 'package:flutter/material.dart';

class MyLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.red.shade500
      ..strokeWidth = 1
      ..strokeCap = StrokeCap.round;
    for (int i = 0; i < 310; i += 10) {
      canvas.drawLine(
          Offset(i.toDouble(), 0), Offset(size.width / 2, size.height), paint);
    }
    for (int i = 0; i < 55; i += 5) {
      canvas.drawLine(
          Offset(0, i.toDouble()), Offset(size.width / 2, size.height), paint);
    }
    for (int i = 0; i < 55; i += 5) {
      canvas.drawLine(Offset(size.width, i.toDouble()),
          Offset(size.width / 2, size.height), paint);
    }
    Paint circlePaint = Paint()..color = Colors.red;
    canvas.drawCircle(
        Offset(size.width / 2, size.height - 15), 15, circlePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
