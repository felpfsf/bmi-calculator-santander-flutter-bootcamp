import 'package:bmi_calculator/classes/person.dart';
import 'package:test/test.dart';

void main() {
  group('BMI Calculator Tests', () {
    test('Calculate BMI - Underweight', () {
      var person = Person();
      String bmiCategory = person.checkBMI(40, 2);
      expect(
          bmiCategory,
          equals(
              "your BMI is '10.00', indicating severe underweight. Seek immediate medical attention."));
    });

    test('Calculate BMI - Healthy', () {
      var person = Person();
      String bmiCategory = person.checkBMI(70, 1.75);
      expect(
          bmiCategory,
          equals(
              "your BMI is '22.86', indicating a healthy weight. Keep up the good work with a balanced diet and regular exercise."));
    });

    test('Calculate BMI - Overweight', () {
      var person = Person();
      String bmiCategory = person.checkBMI(90, 1.75);
      expect(
          bmiCategory,
          equals(
              "your BMI is '29.39', indicating overweight. It's advisable to work on weight management through a healthier diet and exercise routine."));
    });
  });
}
