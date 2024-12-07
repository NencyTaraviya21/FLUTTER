import 'dart:io';

void main(){
  int num;
  stdout.writeln("Enter a num: ");
  num=int.parse(stdin.readLineSync()!);
  int ans=1;

  for(int i=1; i<=num; i++){
    ans=ans*i;
  }
  print(ans);
}