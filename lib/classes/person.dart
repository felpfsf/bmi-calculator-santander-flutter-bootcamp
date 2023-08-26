class Person {
  String _name = "";
  double _height = 0.0;
  double _weight = 0.0;

  String get name => _name;

  set name(String name) {
    if (name.isNotEmpty) {
      _name = name;
    }
  }

  double get height => _height;

  set height(double? height) {
    if (height != null && height > 0) {
      _height = height;
    }
  }

  double get weight => _weight;

  set weight(double? weight) {
    if (weight != null && weight > 0) {
      _weight = weight;
    }
  }

  double _getBMI(double weight, double height) {
    double bmi = (weight / (height * height));

    return bmi;
  }

  String checkBMI(double weight, double height) {
    var bmi = _getBMI(weight, height);

    if (bmi < 16) {
      return "your BMI is '${bmi.toStringAsFixed(2)}', indicating severe underweight. Seek immediate medical attention.";
    } else if (bmi >= 16 && bmi <= 16.9) {
      return "your BMI is '${bmi.toStringAsFixed(2)}', indicating moderate thinness. It's recommended to consult with a healthcare provider to address your nutrition and overall health.";
    } else if (bmi >= 17 && bmi <= 18.4) {
      return "your BMI is '${bmi.toStringAsFixed(2)}', indicating mild thinness. Consider speaking with a healthcare professional to ensure you are maintaining a healthy lifestyle.";
    } else if (bmi >= 18.5 && bmi <= 24.9) {
      return "your BMI is '${bmi.toStringAsFixed(2)}', indicating a healthy weight. Keep up the good work with a balanced diet and regular exercise.";
    } else if (bmi >= 25 && bmi <= 29.9) {
      return "your BMI is '${bmi.toStringAsFixed(2)}', indicating overweight. It's advisable to work on weight management through a healthier diet and exercise routine.";
    } else if (bmi >= 30 && bmi <= 34.9) {
      return "your BMI is '${bmi.toStringAsFixed(2)}', indicating obesity class I. It's important to take steps to manage your weight for better health.";
    } else if (bmi >= 35 && bmi <= 39.9) {
      return "your BMI is '${bmi.toStringAsFixed(2)}', indicating obesity class II. Consult with a healthcare professional for guidance on addressing your weight.";
    } else if (bmi >= 40) {
      return "your BMI is '${bmi.toStringAsFixed(2)}', indicating severe obesity (obesity class III). Seek immediate medical attention to address the health risks associated with severe obesity.";
    } else {
      return "Invalid data";
    }
  }

  @override
  String toString() {
    return "Name: $_name, height: $_height, weight: $_weight";
  }
}
