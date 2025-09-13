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

  // Handle new line as Delimiter along with comma Numbers test - return sum
  test(
      "Multiple Numbers separated by comma and new line return - sum of numbers",
      () {
    expect(stAdd("7,3,4\n2,3"), 19);
  });

  // Custom Delimiter defined at start test - return sum
  test("Support Custom Delimiter defined at start - sum of numbers", () {
    expect(stAdd("//;\n4;3"), 7);
  });

  // if negative numbers exist - throw exception
  test("throws exception when negatives are present", () {
    expect(
      () => stAdd("5,-7,3,-4"),
      throwsA(
        predicate(
          (e) =>
              e is Exception &&
              e.toString().contains("negative numbers are not allowed -7,-4"),
        ),
      ),
    );
  });
}
