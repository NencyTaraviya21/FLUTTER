import 'dart:io';

void main(){
  int  num;
  stdout.writeln("Enter a num: ");
  num=int.parse(stdin.readLineSync()!);
  int ans=0;

  for(int i=0; num!=0; i++){
    ans=num%10;
    stdout.write(ans);
    num=num~/10;
  }
}