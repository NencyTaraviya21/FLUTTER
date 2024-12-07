import 'dart:io';
//Que-1 Print name

void main(){
  print("Nency");

  //Que-2 Add-2

  int ? a;
  stdout.writeln("Enter value of a: ");
  a=int.parse(stdin.readLineSync()!);

  int ? b;
  stdout.writeln("Enter value of b: ");
  b=int.parse(stdin.readLineSync()!);

  int c=a+b;

  stdout.writeln("ans is: $c");

  //Que3 f to c

  int ? celcius;
  stdout.writeln("Enter value of celcius: ");
  celcius = int.parse(stdin.readLineSync()!);

  double ? farhenhite = (celcius * (9/5))+32;

  stdout.writeln("conversion is: $farhenhite");

}



