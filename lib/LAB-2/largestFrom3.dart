import 'dart:io';
void main(){
  int ? num1,num2,num3;
  stdout.writeln("Enter a num1: ");
  num1=int.parse(stdin.readLineSync()!);

  stdout.writeln("Enter a num2: ");
  num2=int.parse(stdin.readLineSync()!);

  stdout.writeln("Enter a num3: ");
  num3=int.parse(stdin.readLineSync()!);

  if(num1>num2 && num1>num3){
    print("Number 1 is largest");
  }
  if(num2>num1 && num2>num3){
    print("Number 2 is largest");
  }
  else{
    print("Number 3 is largest");
  }

}

