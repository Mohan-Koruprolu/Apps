import 'dart:math';

class Calcbrain {
  int height;
  int weight;
  Calcbrain(this.height, this.weight);
  double bmi = 0;
  String clacBMI() {
    bmi = weight / pow(height / 100, 2);
    return bmi.toStringAsFixed(2);
  }

  String getResult() {
    if (bmi >= 25) {
      return "overweight";
    } else if (bmi > 18.5) {
      return "Normal";
    } else {
      return "underweight";
    }
  }

  String interpretation() {
    if (bmi >= 25) {
      return "Higher BMi ,Try to Exercise";
    } else if (bmi > 18.5) {
      return "Normal BMI ,GoodJob";
    } else {
      return "Lower BMI ,Try to eat something";
    }
  }
}
