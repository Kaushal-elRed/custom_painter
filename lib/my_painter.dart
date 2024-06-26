import 'dart:ui' as ui;
import 'package:flutter/material.dart';

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    //! Drawing line
    Paint paint = Paint()
      ..color = Colors.red
      ..strokeWidth = 1
      ..strokeCap = StrokeCap.round;
    for (int i = 0; i < 310; i += 10) {
      canvas.drawLine(
          Offset(i.toDouble(), 0), Offset(size.width / 2, 50), paint);
    }
    for (int i = 0; i < 55; i += 5) {
      canvas.drawLine(
          Offset(0, i.toDouble()), Offset(size.width / 2, 50), paint);
    }
    for (int i = 0; i < 55; i += 5) {
      canvas.drawLine(
          Offset(size.width, i.toDouble()), Offset(size.width / 2, 50), paint);
    }

    //! Drawing Circle sun
    Paint circlePaint = Paint()..color = Colors.red;
    canvas.drawCircle(Offset(size.width / 2, 35), 15, circlePaint);

    //! Drawing Rectangle water
    Paint rectPaint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 1
      ..shader = ui.Gradient.radial(
          Offset(size.width / 2, 5), 100, [Colors.red, Colors.blue]);
    canvas.drawRect(Rect.fromLTWH(0, 50, size.width, 40), rectPaint);

    //! Drawing Rectangle ground
    Paint rectGroundPaint = Paint()
      ..color = Colors.brown
      ..strokeWidth = 1;
    canvas.drawRect(Rect.fromLTWH(0, 90, size.width, 40), rectGroundPaint);
    drawFlag(canvas, size);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

  drawFlag(Canvas canvas, Size size) {
    Paint flagtop = Paint()..color = Colors.orange;
    Paint flagmid = Paint()..color = Colors.white;
    Paint flagbottom = Paint()..color = Colors.green;

    canvas.drawRect(const Rect.fromLTWH(50, 35, 40, 10), flagtop);
    canvas.drawRect(const Rect.fromLTWH(50, 35 + 10, 40, 10), flagmid);
    canvas.drawCircle(
        const Offset(60 + 10, 50), 5, Paint()..color = Colors.blue);
    canvas.drawRect(const Rect.fromLTWH(50, 35 + 20, 40, 10), flagbottom);

    Paint flagRod = Paint()
      ..color = Colors.brown.shade900
      ..strokeWidth = 2;
    canvas.drawRect(
        const Rect.fromLTWH(25, 97, 50, 17), Paint()..color = Colors.black);
    canvas.drawRect(const Rect.fromLTWH(30, 95, 40, 15),
        Paint()..color = Colors.grey.shade800);
    canvas.drawLine(const Offset(50, 35), const Offset(50, 100), flagRod);
  }
}
