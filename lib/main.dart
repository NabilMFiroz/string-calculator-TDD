import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

int stAdd(String numbers) {
  if (numbers.isEmpty) return 0;
  var delimiter = RegExp(r'[,\n]');
  var parts = numbers.split(delimiter);
  return parts.map(int.parse).reduce((a, b) => a + b);
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('String Calculator with TDD'),
        ),
      ),
    );
  }
}
