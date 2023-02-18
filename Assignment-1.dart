void main() {
  // Mark sheet program - 4/Feb/2023
  int english = 70;
  int maths = 90;
  int physics = 75;
  int chemistry = 90;
  int urdu = 90;
  int totalMarks = 500;

  num obtainedMakrs = english + maths + physics + chemistry + urdu;
  num percentage = (obtainedMakrs / totalMarks) * 100;

  if (percentage >= 80.0) {
    print(
        "Congratulations!! Your Grade is A+ and your percentage is $percentage%");
  } else if (percentage >= 70.0) {
    print(
        "Congratulations!! Your Grade is A and your percentage is $percentage%");
  } else if (percentage >= 60.0) {
    print(
        "Congratulations!! Your Grade is B and your percentage is $percentage%");
  } else if (percentage >= 50.0) {
    print(
        "Congratulations!! Your Grade is C and your percentage is $percentage%");
  } else {
    print("Not Yet Passed. Work Hard");
  }
}
