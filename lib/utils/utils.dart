import 'dart:convert';
import 'dart:io';

class Utils {
  static String readInput() {
    String? input;
    do {
      input = stdin.readLineSync(encoding: utf8);
    } while (input == null || input.isEmpty);
    return input;
  }

  static String readUserInput(String text) {
    stdout.write(text);
    return readInput();
  }

  static double? readDouble() {
    String value;
    do {
      value = readInput();
    } while (value.isEmpty);
    
    try {
      return double.parse(value);
    } catch (e) {
      return null;
    }
  }

  static double? readDoubleString(String value) {
    stdout.write(value);
    return readDouble();
  }
}
