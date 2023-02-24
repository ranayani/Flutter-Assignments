void main() {
  //Q.1: Create a list of names and print all names using list.
  var nameList = ["Raza", "Ali", "Sabeel", "Owais"];
  print(nameList);

  //Q.2: Create an empty list of type string called days. Use the add method to add names of 7 days and print all days.
  List<String> days = [];
  days.add("Sunday");
  days.add("Monday");
  days.add("Tuesday");
  days.add("Wednessday");
  days.add("Thursday");
  days.add("Friday");
  days.add("Saturday");
  print(days);

  //Q.3: Create a list of Days and remove one by one from the end of list.
  days.removeLast();
  print(days);
  days.removeLast();
  days.removeLast();
  days.removeLast();
  days.removeLast();
  days.removeLast();
  days.removeLast();
  print(days);

  //Q.4: Create a list of numbers and create one empty list, now check for every index number is EVEN or ODD. if number is even then add true into empty list and if number is odd then add false into empty list, both list needs to print at the end.
  List<int> numList = [1, 2, 3, 4, 5];
  List<bool> evenOddList = [];
  evenOddList.add(numList[0] % 2 == 0);
  evenOddList.add(numList[1] % 2 == 0);
  evenOddList.add(numList[2] % 2 == 0);
  evenOddList.add(numList[3] % 2 == 0);
  evenOddList.add(numList[4] % 2 == 0);
  print(numList);
  print(evenOddList);

  //Q.5: Count number of even & number of odds from Q4 list using increment & decrement operators only.
  int evenCounter = 0;
  int OddCounter = 0;
  if (evenOddList[0])
    evenCounter++;
  else
    OddCounter++;
  if (evenOddList[1])
    evenCounter++;
  else
    OddCounter++;
  if (evenOddList[2])
    evenCounter++;
  else
    OddCounter++;
  if (evenOddList[3])
    evenCounter++;
  else
    OddCounter++;
  if (evenOddList[4])
    evenCounter++;
  else
    OddCounter++;
  print("Total $evenCounter even number and $OddCounter odd number in list");

  //Q.6: Write a program to sum all the items in a list, then multiply all the items in a list with there index number.
  int sumResult = 0;
  numList.every((element) {
    sumResult += element;
    return true;
  });
  print("print sum of all the items in a list is $sumResult");
  int index = 0;
  List<int> multiplyList = [];
  numList.every((element) {
    multiplyList.add(sumResult * index);
    index++;
    return true;
  });
  print("$multiplyList");

  //Q.7: Create a list of numbers & write a program to get the smallest & greatest number from a list.
  numList.sort();
  print("Smallest value in the list ${numList.first}");
  print("Largest value in the list ${numList.last}");

  //Q.8: Create a map with name, phone keys and store some values to it. Use where to find all keys that have length 4.
  var contactsMap = {123: "Raza", 4567: "Ali", 8910: "Hadi", 112: "Asar"};
  print(
      "All keys that have length 4 : ${contactsMap.keys.where((element) => element.toString().length == 4)}");

  //Q.9: Create Map variable name world then inside it create countries Map, Key will be the name country & country value will have another map having capitalCity, currency and language to it. by using any country key print all the value of Capital & Currency.
  Map<String, Map<String, String>> world = {
    "Pakistan": {
      "capitalCity": "Islamabad",
      "currency": "PKR",
      "language": "urdu"
    },
    "Iran": {
      "capitalCity": "Tehran",
      "currency": "Tuman",
      "language": "Persion"
    },
    "SaudiArabia": {
      "capitalCity": "Riyadh",
      "currency": "Riyal",
      "language": "Arabic"
    }
  };
  print(
      "Iran Capital City is ${world["Iran"]?["capitalCity"]} and Currency is ${world["Iran"]?["currency"]}");

// Q.10:
// Map<String, double> expenses = {
//   'sun': 3000.0,
//   'mon': 3000.0,
//   'tue': 3234.0,
// };

// Check if "fri" exist in expanses; if exist change it's value to 5000.0 otherwise add 'fri' to expenses and set its value to 5000.0 then print expenses.
  Map<String, double> expenses = {
    'sun': 3000.0,
    'mon': 3000.0,
    'tue': 3234.0,
  };
  Map<String, double> newExpense = {'fri': 5000.0};
  if (expenses.containsKey("fri")) {
    expenses["fri"] = 5000.0;
  } else {
    expenses.addEntries(newExpense.entries);
  }
  print("Expenses $expenses");
}
