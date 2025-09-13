import 'package:flutter_test/flutter_test.dart';
import 'package:string_calculator_tdd/main.dart';

void main() {
  // Empty String test - return 0
  test("Empty String return - 0", () {
    expect(stAdd(""), 0);
  });
}
