import 'package:bmi_calculator/classes/person.dart';
import 'package:bmi_calculator/utils/utils.dart';

int calculate() {
  return 6 * 7;
}

void execute() {
  while (true) {
    var person = Person();
    double height;
    double weight;

    print('\nWelcome to BMI Calculator!');
    print("Type 'exit' anytime to leave the application\n");

    String personName = Utils.readUserInput("Tell me your name => ");

    try {
      String heightInput =
          Utils.readUserInput("Type your height(in meters) => ")!;
      if (heightInput == 'exit') {
        break;
      }
      height = double.parse(heightInput);
      if (height <= 0) {
        throw FormatException("Height must be greater than zero");
      }

      String weightInput = Utils.readUserInput("Type your weight(in kg) => ")!;
      if (weightInput == 'exit') {
        break;
      }

      weight = double.parse(weightInput);
      if (weight <= 0) {
        throw FormatException("Weight must be greater than zero");
      }
    } catch (e) {
      print("Invalid input: ${e.toString()}");
      return;
    }
    print("\n$personName ${person.checkBMI(weight, height)}");
  }
}
