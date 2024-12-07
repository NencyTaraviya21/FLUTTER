import 'dart:io';

void main(){
  stdout.writeln("Enter time period: ");
  int time_period=int.parse(stdin.readLineSync()!);

  stdout.writeln("Enter rate of interest: ");
  int rate_interest=int.parse(stdin.readLineSync()!);

  stdout.writeln("Enter principal amount: ");
  int pricipal_amt=int.parse(stdin.readLineSync()!);

  simpleInsterest(time_period, rate_interest: rate_interest, pricipal_amt: pricipal_amt);
}
void simpleInsterest(int time_period, {required int rate_interest,required int pricipal_amt}){
  int ans = (time_period * rate_interest * pricipal_amt)~/100;
  print("simple insterest is: $ans");
}