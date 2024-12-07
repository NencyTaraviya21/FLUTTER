import 'dart:io';
void main(){
  int ? num;
  int i;
  int ans = 0;
  double percentage=0.0;
  for(i=0; i<5; i++){
    stdout.writeln("Enter a num $i: ");
    num = int.parse(stdin.readLineSync()!);
    ans+=num;
  }
  percentage=ans/i;
  stdout.writeln("Percentage of five sub is: $percentage");
}