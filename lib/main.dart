import 'package:custom_painter/line_painter.dart';
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
      body: Center(
        child: ColoredBox(
          color: Colors.grey.shade300,
          child: SizedBox(
            width: 300,
            height: 50,
            child: CustomPaint(
              painter: MyLinePainter(),
              size: const Size(300, 50),
            ),
          ),
        ),
      ),
    );
  }
}
