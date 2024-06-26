import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class MyColorPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    canvas.clipRect(Offset.zero & size);
    canvas.drawColor(Colors.green, BlendMode.color);
    canvas.drawPaint(Paint()
      ..shader = ui.Gradient.linear(Offset(size.width, 0),
          Offset(size.width, size.height), [Colors.red, Colors.pink]));
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
