import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

int stAdd(String numbers) {
  if (numbers.isEmpty) return 0;
  var delimiterPattern = "[,\n]"; // default delimiters
  String nums = numbers;

  if (numbers.startsWith("//")) {
    // assuming single character delimiter
    if (nums.length < 4 || nums[3] != "\n") {
      throw ArgumentError('Invalid custom delimiter syntax');
    }
    var delimiter = numbers[2];
    delimiterPattern = "[$delimiter]";
    nums = numbers.split('\n')[1];
  }

  var parts = nums.split(RegExp(delimiterPattern));
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
