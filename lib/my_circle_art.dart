import 'package:flutter/material.dart';

class MyCircleArtPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..strokeWidth = 1
      ..color = Colors.black
      ..style = PaintingStyle.stroke;
    for (int i = 0; i < 270; i += 10) {
      canvas.drawCircle(Offset(i.toDouble() + 20, 25), 20, paint);
    }
    for (int i = 0; i < 270; i += 10) {
      canvas.drawCircle(Offset(i.toDouble() + 20, 55), 20, paint);
    }
    for (int i = 0; i < 270; i += 10) {
      canvas.drawCircle(Offset(i.toDouble() + 20, 85), 20, paint);
    }

    //! Drawing Oval
    canvas.drawRect(
        Rect.fromPoints(const Offset(55, 120), const Offset(250, 280)),
        paint
          ..style = PaintingStyle.fill
          ..color = Colors.red);
    canvas.drawOval(
        const Rect.fromLTRB(10, 120, 100, 280),
        paint
          ..style = PaintingStyle.fill
          ..color = Colors.black);
    canvas.drawOval(
        const Rect.fromLTRB(10, 120, 100, 280),
        paint
          ..style = PaintingStyle.stroke
          ..color = Colors.red);
    canvas.drawOval(
        const Rect.fromLTRB(300, 120, 210, 280),
        paint
          ..style = PaintingStyle.fill
          ..color = Colors.red);
    canvas.drawOval(
        const Rect.fromLTRB(300, 120, 210, 280),
        paint
          ..style = PaintingStyle.stroke
          ..color = Colors.red);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
