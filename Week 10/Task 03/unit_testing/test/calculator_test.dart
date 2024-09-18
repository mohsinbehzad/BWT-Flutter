import 'dart:math';

import 'package:flutter_test/flutter_test.dart';

import 'calculator.dart';

void main() {
  // test('I want to test additon', (){

  //   // Step 1
  //   Calculator calc = Calculator();

  //   // Step 2
  //   int result = calc.add(3, 3);

  //   // Step 3
  //   expect(result, 6);

  //   expect(result, isNot(10));
  // });

  // instead of above, if we want to write for group then

  group('I want to test my Calculator', () {
    test('I want to test addition', () {
      Calculator calc = Calculator();

      int result = calc.add(3, 5);

      expect(result, isNot(10));

      expect(result, 8);
    });

    test('I want to test multiplication', () {
      Calculator calc = Calculator();

      int result = calc.mul(3, 5);

      expect(result, 15);
    });

    test('I want to test subtractin', (){
      Calculator calc = Calculator();

      int result = calc.sub(5, 3);

      expect(result, 2);
    });

    tearDownAll(() {
      print('Good Job!');
    });
  });
}
