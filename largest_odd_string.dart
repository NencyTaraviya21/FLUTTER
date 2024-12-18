// WAP to find the largest odd integer (as a string) that is a non-empty substring of a given string
// num, which represents a large integer. If no odd integer exists, return an empty string "".
// Example: Input: num = "52", Output: "5"; Input: num = "4206", Output: ""; Input: num =
// "35427", Output: "35427".

import 'dart:io';
import 'package:flutter_project/LAB-5/Utils/string_const.dart';

String largestNumFromString(String number){
  String currentString = "";


  for(int i=0; i<number.length; i++){
    if(int.parse(number[i])%2!=0){
        currentString += number[i];
    }
  }
  return currentString;
}

void main(){
  printBlue("Example 1st: ${largestNumFromString('52')}");
  printWarning("Example 2nd: ${largestNumFromString('4206')}");
  printBlue("Example 3rd: ${largestNumFromString('3579')}");
}