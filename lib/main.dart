import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

int stAdd(String numbers) {
  if (numbers.isEmpty) return 0;
  var delimiterPattern = "[,\n]"; // default delimiters
  String nums = numbers;

  if (numbers.startsWith("//")) {
    var delimiterSection = numbers.split('\n')[0].substring(2);
    nums = numbers.split('\n')[1];
    // if delimiter wraps with brackets, support multi-character
    if (delimiterSection.startsWith('[') && delimiterSection.endsWith(']')) {
      final delimiter =
          delimiterSection.substring(1, delimiterSection.length - 1);
      delimiterPattern = RegExp.escape(delimiter);
    } else {
      delimiterPattern = "[$delimiterSection]";
    }
  }

  final integerParts =
      nums.split(RegExp(delimiterPattern)).map(int.parse).toList();
  final negativeParts = integerParts.where((n) => n < 0).toList();
  if (negativeParts.isNotEmpty) {
    throw Exception(
        "negative numbers are not allowed ${negativeParts.join(",")}");
  }

  return integerParts.where((n) => n <= 1000).fold(0, (a, b) => a + b);
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
