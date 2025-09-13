import 'package:flutter_test/flutter_test.dart';
import 'package:string_calculator_tdd/main.dart';

void main() {
  // Empty String test - return 0
  test("Empty String return - 0", () {
    expect(stAdd(""), 0);
  });

  // Single Number test - return same
  test("Single number return - same number", () {
    expect(stAdd("7"), 7);
  });

  // Two Numbers test - return sum
  test("Two numbers separated by comma return - sum of numbers", () {
    expect(stAdd("7,3"), 10);
  });

  // Multiple Numbers test - return sum
  test("Multiple Numbers separated by comma return - sum of numbers", () {
    expect(stAdd("7,3,4,2,3"), 19);
  });
}
