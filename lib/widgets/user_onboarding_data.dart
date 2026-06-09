class UserOnboardingData {
  String name = "";
  int age = 18;
  double weight = 60;
  double height = 165;

  String skinType = "Combination";
  String cycleType = "Regular";
  String selfCareDay = "Sunday";

  String medications = "";

  DateTime? lastPeriodStart;
  DateTime? lastPeriodEnd;

  double get bmi => weight / ((height / 100) * (height / 100));

  String get bmiCategory {
    if (bmi < 18.5) return "Underweight";
    if (bmi < 25) return "Healthy";
    if (bmi < 30) return "Overweight";
    return "Obese";
  }
}