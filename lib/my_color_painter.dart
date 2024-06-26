import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class MyColorPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    canvas.clipRect(Offset.zero & size);
    canvas.drawColor(Colors.green, BlendMode.color);
    canvas.drawPaint(Paint()
      ..shader = ui.Gradient.linear(
        Offset(size.width, 0),
        Offset(size.width, size.height),
        [Colors.red, Colors.pink],
      ));

    //! Drawing points

    Paint pointPaint = Paint()
      ..color = Colors.black
      ..strokeWidth = 2;
    // List<Offset> points = [
    //   const Offset(margin, margin),
    //   Offset(size.width - margin, margin),
    //   Offset((size.width) / 2, margin + margin),
    //   const Offset(margin, margin)
    // ];
    // canvas.drawPoints(PointMode.polygon, points, pointPaint);

    Float32List leftEar =
        Float32List.fromList([50, 50, 70, 70, 50, 90, 50, 50]);
    Float32List rightEar =
        Float32List.fromList([120, 50, 100, 70, 120, 90, 120, 50]);
    Float32List face =
        Float32List.fromList([70, 70, 100, 70, 120, 90, 85, 125, 50, 90]);
    canvas.drawRawPoints(PointMode.polygon, leftEar, pointPaint);
    canvas.drawRawPoints(PointMode.polygon, rightEar, pointPaint);
    canvas.drawRawPoints(PointMode.polygon, face, pointPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
