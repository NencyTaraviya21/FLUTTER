import 'dart:io';

int lastLenght(String str){
  int length=0;
  for(int i=str.length-1; i>=0; i--){
    if(str[i]!=' ')
      length++;
    else{
      break;
    }
  }
  return length;
}

void main(){
  String str1 = 'fly me to the moon';
  print("Str1: $str1" " ---> " "output: ${lastLenght(str1)}");

  String str2 = 'This is Nency';
  print("Str2: $str2" " ---> " "output: ${lastLenght(str2)}");
}