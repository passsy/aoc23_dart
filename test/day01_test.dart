import 'dart:io';

import 'package:test/test.dart';
import '../bin/day01_part1.dart' as day01_part1;
import '../bin/day01_part1.min.dart' as day01_part1_min;
import '../bin/day01_part2.dart' as day01_part2;
import '../bin/day01_part2.min.dart' as day01_part2_min;
import 'main_tester.dart';

void main() {
  group('day 01', () {
    test('sample part 1', () {
      final output = testMain(
        day01_part1.main,
        input: File('data/day01_sample.txt').readAsStringSync(),
      );
      expect(output, '142');
    });

    test('golf part 1', () {
      final output = testMain(
        day01_part1_min.main,
        input: File('data/day01_sample.txt').readAsStringSync(),
      );
      expect(output, '142');
    });

    test('solve part 1', () {
      final output = testMain(
        day01_part1.main,
        input: File('data/day01_input.txt').readAsStringSync(),
      );
      expect(output, isNot('0'));
      print(output);
    });

    test('sample part 2', () {
      final output = testMain(
        day01_part2.main,
        input: File('data/day01_sample.txt').readAsStringSync(),
      );
      expect(output, '100');
    });

    test('golf part 2', () {
      final output = testMain(
        day01_part2_min.main,
        input: File('data/day01_sample.txt').readAsStringSync(),
      );
      expect(output, '100');
    });

    test('solve part 2', () {
      final output = testMain(
        day01_part2.main,
        input: File('data/day01_input.txt').readAsStringSync(),
      );
      expect(output, isNot('0'));
      print(output);
    });
  });
}
