import 'dart:io';

void main(){
  int positiveNum=0;
  int negNum=0;
  String setOfNum;
  stdout.writeln("Enter a name: ");

  var individual;

  while(true){
    setOfNum=(stdin.readLineSync()!);
    if(setOfNum==null||setOfNum.isEmpty) continue;

    int number = int.parse(setOfNum);

    if(number==0){
      break;
    }

    if(number>0 && number%2==0){
      positiveNum+=number;
    }
    if(number<0 && number%3==0)
      negNum+=number;
  }
  stdout.writeln("sum of postive numeber is: $positiveNum");
  stdout.write("sum of negative numeber is: $negNum");
}