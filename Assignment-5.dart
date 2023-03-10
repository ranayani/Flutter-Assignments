import 'dart:math';

void main() {
  // Q2: Write a program in Dart that find the area of a circle using function.
  areaOfCircle(20);
  // Q3: Write a program in a dart that implements the Pythagorean theorem using function.
  pythagoreanTheorem(5, 10);
  // Q4: Write a program in Dart to reverse a String using function.
  reverseString("Hello");
  // Q6:  Write a program in Dart to calculate power of a certain numbers using function only.
  calculatePower(10, 0);
  // Q7: Write a function to calculate number of vowels and consonant in a String.
  calculateVowelsAndConsonant('number of vowels and consonant in a String');
}

areaOfCircle(r) {
  num pie = 3.14159;
  print("Area of cricle for given radious is ${pie * (r * r)}");
}

pythagoreanTheorem(a, b) {
  num c;
  c = sqrt(a * a + b * b);
  print(
      "According to Pythagorean Theorem when a:$a and b:$b then c will be c:${c.toStringAsFixed(2)}");
}

reverseString(String value) {
  String result = '';
  for (var i = value.length - 1; i >= 0; i--) {
    result += value[i];
  }
  print("Reversed string is $result");
}

calculatePower(int base, int power) {
  var result = base;
  if (power == 0) {
    print("$base power $power is 1");
    return;
  }
  for (var i = 1; i < power; i++) {
    result *= base;
  }
  print("$base power $power is $result");
}

calculateVowelsAndConsonant(String value) {
  value = value.toLowerCase();
  int vowelCount = 0;
  int consonantCount = 0;
  List vowel = ['a', 'e', 'i', 'o', 'u'];
  for (int i = 0; i < value.length; i++) {
    if (vowel.contains(value[i]))
      vowelCount++;
    else if (value.codeUnitAt(i) > 'a'.codeUnitAt(0) &&
        value.codeUnitAt(i) < 'z'.codeUnitAt(0)) consonantCount++;
  }
  print("Number of vowels: $vowelCount");
  print("Number of consonants: $consonantCount");
}
