import 'package:flutter/material.dart';

class Clipper extends StatelessWidget {
  const Clipper({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.black,
        height: 200,
        width: 200,
        child: ClipPath(
          clipper: TestClipper(),
          child: Container(
            color: Colors.orange,
          ),
        ),
      ),
    );
  }
}

class TestClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    double width = size.width;
    double height = size.height;
    Path path = Path();
    // Parallelogram
    // path.lineTo(width * 0.2, 0);
    // path.lineTo(0, height);
    // path.lineTo(width * 0.8, height);
    // path.lineTo(width, 0);

    // Trapazoid
    // path.moveTo(width * 0.2, 0);
    // path.lineTo(width * 0.8, 0);
    // path.lineTo(width, height);
    // path.lineTo(0, height);

    // Diamond
    // path.moveTo(width * 0.5, 0);
    // path.lineTo(width, height * 0.5);
    // path.lineTo(width * 0.5, height);
    // path.lineTo(0, height * 0.5);

    // Cresent moon
    // path.moveTo(width * 0.5, 0);
    // path.quadraticBezierTo(width * 0.05, height * 0.5, width * 0.5, height);
    // path.quadraticBezierTo(-(width * 0.3), height * 0.5, width * 0.5, 0);

    // Half Oval
    // path.moveTo(0, height);
    // path.cubicTo(0, 0, width, 0, width, height);

    // Half circular Gate
    // path.moveTo(0, height);
    // path.cubicTo(-width * 0.2, 0, width * 1.2, 0, width, height);

    // Wave
    // double topMargin = height * 0.1;
    // path.moveTo(0, height * 0.1);
    // path.cubicTo(width * 0.1, height * 0.3, width * 0.3, height * 0.3,
    //     width * 0.4, topMargin);

    // path.cubicTo((width * 0.5), -(height * 0.03), width * 0.7, -(height * 0.03),
    //     width * 0.8, topMargin);
    // path.cubicTo(
    //     width * 0.85, height * 0.2, width, height * 0.2, width, topMargin);
    // path.lineTo(width, height);
    // path.lineTo(0, height);

  
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return true;
  }
}
