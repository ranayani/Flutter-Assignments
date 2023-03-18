void main() {
  printIsPalindrome("Civic");
  alphabeticallyArrang("hello");
  convertToPascalCase("how are you");
  printSecondLowestAndGreatestNumber([1,2,3,4,5]);
  printLongestCountryName(["Australia", "Germany", "United States of America"]);
  letterCountInString('w3resource.com', 'o');
}

//Q1: Write a Dart function that returns whether a passed string is palindrome or not?
  //* A palindrome is word, phrase, or sequence that reads the same backward as forward, e.g., madam, non, mom etc.

bool isPalindrome(String val) =>
   (val.toLowerCase() == val.toLowerCase().split('').reversed.join());

void printIsPalindrome(String val){
  String output = "Provided value $val is Palindrome";
  if(isPalindrome(val)){
    print(output);
  }else{
    print(output.replaceAll("is","is not"));
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

void convertToPascalCase(String input){
  List<String> val = input.toLowerCase().split(' ');
  String result = '';
  for(int i=0; i < val.length; i++){
    result += "${val[i][0].toUpperCase()}${val[i].substring(1)} ";
  }
  print(result);
}

// Q4: Write a Dart function which will take an array of numbers stored and find the second lowest and second greatest numbers, respectively.
// Sample array : [1,2,3,4,5]
// Expected Output : 2,4

void secondLowestNumber(List<int> val){

  if (val.length < 4) {
    throw Exception('Array must have at least 4 elements.');
  }

  print("Second lowest number: ${val[1]}");
}

void secondGreatestNumber(List<int> val){

  if (val.length < 4) {
    throw Exception('Array must have at least 4 elements.');
  }

  print("Second greates number: ${val[val.length - 2]}");
}

void printSecondLowestAndGreatestNumber(List<int> val){
  val.sort();
  secondLowestNumber(val);
  secondGreatestNumber(val);
}

//Q5: Write a Dart function that accepts two arguments, a string and a letter and the function will count the number of occurrences of the specified letter within the string.
//Sample arguments : 'w3resource.com', 'o'
//Expected output : 2
void letterCountInString(String val, String letter){
  if(letter.length > 1)
    {throw Exception('Please provide one charcter only to check its occurance');}
  
  int letterCount = 0;
  letter = letter.toLowerCase();
  val = val.toLowerCase();
  
  for(int i=0; i < val.length; i++){
    if(letter == val[i]){
      letterCount++;
    }
  }
  
  print("$letter Letter occurrences in string $val is $letterCount");
}

//Q6: Write a Dart function that accept a list of country names as input and returns the longest country name as output.
//Sample function : Get_Longest_Country(["Australia", "Germany", "United States of America"])
//Expected output : "United States of America"
void printLongestCountryName(List<String> countries){
  int index = 0;
  
  for(int i=0; i < countries.length; i++){
    for(int j=1; j < countries.length; j++){
      if(countries[j].length > countries[i].length){
        index = j;
      }
    }
  }
  
  print("Longest country name: ${countries[index]}");
}