import 'package:flutter/material.dart';

class MyRectPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Colors.red;
    //! WIre entrance
    canvas.drawRRect(
        RRect.fromRectAndCorners(
          const Rect.fromLTWH(80, 240, 40, 50),
          bottomLeft: const Radius.circular(5),
          bottomRight: const Radius.circular(5),
        ),
        paint..color = Colors.red);

    //! PIN case
    canvas.drawRRect(
        RRect.fromRectXY(const Rect.fromLTWH(35, 100, 130, 150), 70, 20),
        paint..color = Colors.white);
    canvas.drawRRect(
        RRect.fromRectXY(const Rect.fromLTWH(35, 100, 130, 40), 70, 70),
        paint..color = Colors.grey.shade200);

    //! USB C part
    canvas.drawRRect(
        RRect.fromRectXY(const Rect.fromLTWH(50, 50, 100, 80), 70, 20),
        paint..color = Colors.grey.shade300);
    canvas.drawRRect(
        RRect.fromRectXY(const Rect.fromLTWH(50, 50, 100, 20), 70, 70),
        paint..color = Colors.black);
    canvas.drawRRect(
        RRect.fromRectXY(const Rect.fromLTWH(55, 55, 90, 10), 70, 70),
        paint..color = Colors.grey.shade700);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
