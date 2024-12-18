import 'dart:io';
import 'package:flutter_project/LAB-5/Utils/string_const.dart';

void main(){
  stdout.write("Enter size of list: ");
  int ? n = int.parse(stdin.readLineSync()!);
  List<int> num = [];
  int add = 0;
  for(int i=0; i<n; i++){
    print("Enter number in $i:");
    num.add(int.parse(stdin.readLineSync()!));
  }
  for(var i in num){
    if(i%3==0 || i%5==0){
      add+=i;
    }
  }
  printBlue("addition of array num which is either divisible by 3 or 5 is: $add");
}