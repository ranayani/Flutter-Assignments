void main() {
  printIsPalindrome("Civic");
  alphabeticallyArrang("hello");
  convertToPascalCase("how are you");
}

//Q1: Write a Dart function that returns whether a passed string is palindrome or not?
//* A palindrome is word, phrase, or sequence that reads the same backward as forward, e.g., madam, non, mom etc.

bool isPalindrome(String val) =>
    (val.toLowerCase() == val.toLowerCase().split('').reversed.join());

void printIsPalindrome(String val) {
  String output = "Provided value $val is Palindrome";
  if (isPalindrome(val)) {
    print(output);
  } else {
    print(output.replaceAll("is", "is not"));
  }
}

//Q2: Write a Dart function that returns a passed string with letters in alphabetical orders.
//Example String -> hello
//Expected String -> ehllo

String alphabeticallyArrang(String input) {
  List<String> sortedVal = input.toLowerCase().split('')..sort();
  String result = sortedVal.join();
  print(result);
  return result;
}

//Q3: Write a Dart function that accepts a string as a parameter and converts the first letter of each word of the string in upper case.
//Example string : the quick brown fox
//Expected Output : The Quick Brown Fox

void convertToPascalCase(String input) {
  List<String> val = input.toLowerCase().split(' ');
  String result = '';
  for (int i = 0; i < val.length; i++) {
    result += "${val[i][0].toUpperCase()}${val[i].substring(1)} ";
  }
  print(result);
}
