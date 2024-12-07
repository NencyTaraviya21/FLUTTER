import 'dart:io';
void main(){
  int ? snum1;
  int ? snum2;
  var operator ='';
  stdout.writeln("Enter a num1: ");
  snum1=int.parse(stdin.readLineSync()!);

  stdout.writeln("Enter a num2: ");
  snum2=int.parse(stdin.readLineSync()!);

  stdout.writeln("Enter an operator: ");
  operator=(stdin.readLineSync()!);

  switch(operator){
    case'+':
      print(snum1+snum2);
      break;
    case'-':
      print(snum1-snum2);
      break;
    case'*':
      print(snum1*snum2);
      break;
    case'/':
      print(snum1/snum2);
      break;
    default:
      print("Something went wrong");
      break;
  }
}
