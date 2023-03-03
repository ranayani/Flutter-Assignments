import 'dart:js_util';

void main() {
//Q1: Write a program to find the factorial of any number entered using for loop.
  int factorial = 5;
  int result = 1;
  for (var i = 1; i <= factorial; i++) {
    result *= i;
  }
  print("Factorial of $factorial: $result");

  //Q2: Create a list of numbers and find highest number from this list.
  //List<int> numberList = [1, 2, 10, 5];

  //Q3: write a program to print first 10 number of series 0,3,6,9,12...
  int seriesNum = 0;
  for (int i = 0; i < 10; i++) {
    print(seriesNum);
    seriesNum += 3;
  }

  //Q5: Write a program to find sum of all odd numbers between 1 to 100.
  int sumOfOddNum = 0;
  for (var i = 1; i <= 100; i++) {
    if (i % 2 != 0) {
      sumOfOddNum += i;
    }
  }
  print("sum of all odd numbers between 1 to 100 is $sumOfOddNum");
}
