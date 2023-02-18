void main() {
  // Q.1: Create two integer variables length and breadth and assign values then check if they are square values or rectangle values.
  //ie: if both values are equal then it's square otherwise rectangle.
  int length = 10;
  int bredth = 10;
  if (length == bredth) {
    print("It's square");
  } else {
    print("It's rectangle");
  }

  //Q.2: Take two variables and store age then using if/else condition to determine oldest and youngest among them.
  int aliAge = 7;
  int hadiAge = 4;
  print("Ali age is $aliAge");
  print("Hadi age is $hadiAge");
  if (aliAge > hadiAge) {
    print("Ali is older than Hadi");
  } else {
    print("Hadi is younger than Ali");
  }

  //Q.3: A student will not be allowed to sit in exam if his/her attendance is less than 75%.
  //Create integer variables and assign value:
  //Number of classes held = 16,
  //Number of classes attended = 10,
  //and print percentage of class attended.
  //Is student is allowed to sit in exam or not?

  int classesHeld = 16;
  int classesAttended = 10;
  num attendancePercentage = (classesAttended / classesHeld) * 100;
  int allowedPercentage = 75;
  String allowedOrNotAllowedStr = "Allowed";
  if (attendancePercentage < allowedPercentage) {
    allowedOrNotAllowedStr = "Not " + allowedOrNotAllowedStr;
  }
  print(
      "Student attendance is $attendancePercentage% and $allowedOrNotAllowedStr to sit in exam");

  //Q.4: Create integer variable assign any year to it and check if a year is leap year or not.
  //If a year is divisible by 4 then it is leap year but if the year is century year like 2000, 1900, 2100 then it must be divisible by 400.
  //i.e: Use % ( modulus ) operator.

  int year = 2020;
  String yearCommentStr = "";
  if (year % 4 == 0 && year % 400 != 0) {
    yearCommentStr = "Year is leap year";
  } else if (year % 400 == 0) {
    yearCommentStr = "Year is centuary year";
  } else if (year % 4 != 0 && year % 400 != 0) {
    yearCommentStr = "is not centuary and not leap year";
  }
  print("$year $yearCommentStr");

  //Q.5  Write a program to read temperature in centigrade and display a suitable message according to temperature:
  // You have num variable temperature = 42;
  // Now print the message according to temperature:
  // temp < 0 then Freezing weather
  // temp 0-10 then Very Cold weather
  // temp 10-20 then Cold weather
  // temp 20-30 then Normal in Temp
  // temp 30-40 then Its Hot
  // temp >=40 then Its Very Hot

  num temp = 42;
  if (temp < 0) {
    print("Freezing weather");
  } else if (temp > 0 && temp < 10) {
    print("Very Cold weather");
  } else if (temp >= 10 && temp < 20) {
    print("Cold weather");
  } else if (temp >= 20 && temp < 30) {
    print("Normal in Temprature");
  } else if (temp >= 30 && temp < 40) {
    print("Its Hot weather");
  } else {
    print("Its Very Hot weather");
  }

  // Q.6: Write a program to check whether an alphabet is a vowel or consonant.
  String userInput = "b";
  List vowelList = ["a", "e", "i", "o", "u"];
  if (vowelList.contains(userInput.toLowerCase())) {
    print("$userInput is vowel");
  } else {
    print("$userInput is consonant");
  }

  // Q.7: Write a program to calculate and print the Electricity bill of a given customer.
  //Create variable for customer id, name, unit consumed by the user, bill_amount and print the total amount the customer needs to pay. The charge are as follow :

  // Unit    Charge/unit
  // upto 199    @1.20
  // 200 and above but less than 400    @1.50
  // 400 and above but less than 600    @1.80
  // 600 and above             @2.00;

  int idNo = 1001;
  String customerName = "James";
  num unitsConsumed = 800;
  num billAmount, rateApplied;

  if (unitsConsumed <= 199) {
    rateApplied = 1.20;
  } else if (unitsConsumed >= 200 && unitsConsumed < 400) {
    rateApplied = 1.50;
  } else if (unitsConsumed >= 400 && unitsConsumed < 600) {
    rateApplied = 1.80;
  } else {
    rateApplied = 2.00;
  }

  billAmount = unitsConsumed * rateApplied;
  print("""Customer IDNO :$idNo
Customer Name :$customerName
unit Consumed :$unitsConsumed
Amount Charges @Rs. ${rateApplied.toStringAsFixed(2)} per unit : ${billAmount.toStringAsFixed(2)}
Net Bill Amount : ${billAmount.toStringAsFixed(2)}""");
}
