import 'dart:math';

void main() {
  // Q1: Map<String, double> expenses = {
  //   'sun': 3000.0,
  //   'mon': 3000.0,
  //   'tue': 3234.0,
  // };
  // Check if "fri" exist in expanses; if exist change it's value to 5000.0 otherwise add 'fri' to expenses and set its value to 5000.0 then print expenses.
  updateExpenses({
    'sun': 3000.0,
    'mon': 3000.0,
    'tue': 3234.0,
  }, 'fri', 5000.0);
  // Q2: Write a program in Dart that find the area of a circle using function.
  areaOfCircle(20);
  // Q3: Write a program in a dart that implements the Pythagorean theorem using function.
  pythagoreanTheorem(5, 10);
  // Q4: Write a program in Dart to reverse a String using function.
  reverseString("Hello");

  // Q5: Write a program in Dart to signup user by using username, email & password as required fields while  phoneNumber is optional using function, call this function at least 3 times to create different users. Now create another function named as loginUser and then try to login with correct & incorrect credentials
  Map<String, dynamic> user1 =
      signup("Raza Ali", "ra_mrwanayani@hotmail.com", "1234");
  Map<String, dynamic> user2 =
      signup("Sabeel", "sabeel@gmail.com", "987654", 123456789);
  Map<String, dynamic> user3 =
      signup("Owais", "codewithowais@gmail.com", "654321");

  List users = [user1, user2, user3];

  loginUser("codewithowais@gmail.com", "654321", users); // login successfull
  loginUser("sabeel@gmail.com", "1234", users); // login failed

  // Q6:  Write a program in Dart to calculate power of a certain numbers using function only.
  calculatePower(10, 2);
  // Q7: Write a function to calculate number of vowels and consonant in a String.
  calculateVowelsAndConsonant('number of vowels and consonant in a String');
}

updateExpenses(expenses, String day, double amount) {
  if (expenses.containsKey(day)) {
    expenses[day] = amount;
  } else {
    expenses[day] = amount;
  }
  print("Expenses updated: $expenses");
}

areaOfCircle(double r) {
  num pie = 3.14159;
  print("Area of cricle with radious $r is ${pie * (r * r)}");
}

pythagoreanTheorem(num a, num b) {
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

Map<String, dynamic> signup(String username, String email, String password,
    [phoneNumber]) {
  return {
    "username": username,
    "email": email,
    "password": password,
    "phoneNumber": phoneNumber
  };
}

loginUser(String email, String password, List users) {
  bool isAuthenticated = false;
  String username = "";
  for (var user in users) {
    if (user["email"] == email && user["password"] == password) {
      isAuthenticated = true;
      username = user["username"];
      break;
    }
  }

  if (isAuthenticated) {
    print("Login Successfully. Welcome $username!");
  } else {
    print("Invalid username or password");
  }
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
