import 'package:custom_painter/my_circle_art.dart';
import 'package:custom_painter/my_color_painter.dart';
import 'package:custom_painter/my_painter.dart';
import 'package:custom_painter/my_rect_painter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Custom Painter',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Custom Painters")),
      body: ListView(
        children: [
          const SizedBox(height: 30),
          Center(
            child: ColoredBox(
              color: Colors.grey.shade300,
              child: SizedBox(
                width: 300,
                height: 150,
                child: CustomPaint(
                  painter: MyPainter(),
                  size: const Size(300, 150),
                ),
              ),
            ),
          ),
          Center(
            child: ColoredBox(
              color: Colors.grey.shade300,
              child: SizedBox(
                width: 300,
                height: 300,
                child: CustomPaint(
                  painter: MyCircleArtPainter(),
                  size: const Size(300, 300),
                ),
              ),
            ),
          ),
          Center(
            child: ColoredBox(
              color: Colors.blueGrey,
              child: SizedBox(
                width: 300,
                height: 300,
                child: CustomPaint(
                  painter: MyRectPainter(),
                  size: const Size(300, 300),
                ),
              ),
            ),
          ),
          Center(
            child: ColoredBox(
              color: Colors.blueGrey,
              child: SizedBox(
                width: 300,
                height: 300,
                child: CustomPaint(
                  painter: MyColorPainter(),
                  size: const Size(300, 300),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
