// no. which has only 2,3,5 factors

import 'dart:io';

int ? ugly(int num){
  if(num==1)
  return 1;
  if(num<=0)
    return 0;

  if(num%2==0){
    return(ugly(num~/2));
  }
  if(num%3==0){
    return(ugly(num~/3));
  }
  if(num%5==0){
    return(ugly(num~/5));
  }
}
void main(){
  int num;
  stdout.writeln("Enter a num: ");
  num=int.parse(stdin.readLineSync()!);

  int ? ans = ugly(num);
  if(ans==1)
    stdout.writeln("number is ugly");
  else{
    stdout.writeln("number is  not ugly");
  }
}