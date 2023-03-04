void main() {
//Q1: Write a program to find the factorial of any number entered using for loop.
  int factorial = 5;
  int result = 1;
  for (var i = 1; i <= factorial; i++) {
    result *= i;
  }
  print("Factorial of $factorial: $result");

  //Q2: Create a list of numbers and find highest number from this list.
  List<int> numberList = [1, 2, 10, 5];
  int heighestNum = 0;
  for (var i = 0; i < numberList.length; i++) {
    if (heighestNum < numberList[i]) {
      heighestNum = numberList[i];
    }
  }
  print("Highest number in this list is $heighestNum");

  //Q3: write a program to print first 10 number of series 0,3,6,9,12...
  int seriesNum = 0;
  for (int i = 0; i < 10; i++) {
    print(seriesNum);
    seriesNum += 3;
  }

  //Q4: Write a program to print the following:
  // i)
  // **********
  // **********
  // **********
  // **********
  for (var i = 0; i < 4; i++) {
    String stars = '';
    for (var i = 0; i < 10; i++) {
      stars += '*';
    }
    print(stars);
  }

  // ii)
  // *
  // **
  // ***
  // ****
  // *****
  for (var i = 1; i <= 5; i++) {
    String stars = '';
    for (var j = 1; j <= i; j++) {
      stars += '*';
    }
    print(stars);
  }

  // iii)
  // *
  // **
  // ***
  // ****
  // *****
  for (var i = 1; i <= 5; i++) {
    String stars = '';
    for (var j = 1; j <= i; j++) {
      stars += '*';
    }
    print(stars);
  }

  // iv)
  // *
  // ***
  // *****
  // *******
  // *********
  int counter = 1;
  for (var i = 1; i <= 5; i++) {
    String numPattern = '';
    for (var j = 0; j < counter; j++) {
      numPattern += '*';
    }
    print(numPattern);
    counter += 2;
  }

  // v)
  // 1
  // 222
  // 33333
  // 4444444
  // 555555555
  counter = 1;
  for (var i = 1; i <= 5; i++) {
    String numPattern = '';
    for (var j = 0; j < counter; j++) {
      numPattern = numPattern + i.toString();
    }
    print(numPattern);
    counter += 2;
  }

  //Q5: Write a program to find sum of all odd numbers between 1 to 100.
  int sumOfOddNum = 0;
  for (var i = 1; i <= 100; i++) {
    if (i % 2 != 0) {
      sumOfOddNum += i;
    }
  }
  print("sum of all odd numbers between 1 to 100 is $sumOfOddNum");

  //Q6: Write a program to revere a list of numbers. Program should be write using for loop only, .reversed keyword is not allowed.
  List<int> listToReverse = [12, 34, 56, 16, 89, 67, 43];
  int index = listToReverse.length - 1;
  for (int i = 0; i <= listToReverse.length / 2; i++) {
    int temp = listToReverse[i];
    listToReverse[i] = listToReverse[index];
    listToReverse[index] = temp;
    index--;
  }
  print("Reversed list: $listToReverse");

  // Q7: Write a program to print Fibonacci Series upto 100 using for loop only.
  // output: 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89
  int a = 0;
  int b = 1;
  int fibonacci = 0;
  print(a);
  print(b);
  for (int i = 0; a + b < 100; i++) {
    fibonacci = a + b;
    a = b;
    b = fibonacci;
    print(fibonacci);
  }

  // Q8: Write a program to sort a list of numbers. Program should be write using for loop only, .sort keyword is not allowed.
  // [12,34,56,16,89,67,43]
  List<int> listToBeSorted = [12, 34, 56, 16, 89, 67, 43];
  for (int j = 0; j < listToBeSorted.length; j++) {
    for (int k = 0; k < j; k++) {
      if (listToBeSorted[j] < listToBeSorted[k]) {
        int temp = listToBeSorted[j];
        listToBeSorted[j] = listToBeSorted[k];
        listToBeSorted[k] = temp;
      }
    }
  }
  print("Sorted List: $listToBeSorted");
}
