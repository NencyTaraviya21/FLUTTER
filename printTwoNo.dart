import 'dart:io';

void main(){
  int num1;
  int num2;
  stdout.writeln("Enter a num1: ");
  num1=int.parse(stdin.readLineSync()!);

  stdout.writeln("Enter a num2: ");
  num2=int.parse(stdin.readLineSync()!);

  for(int i=num1; i<=num2; i++){
    if(i%2==0 && i%3!=0){
      print("number between give numbers is: $i");
    }
  }
}