import 'dart:io';

void main(){
  String name;
  stdout.writeln("Enter a name: ");
  name=(stdin.readLineSync()!);
  String reverse='';
  var char;
  for(int i=0; i<name.length; i++){
    char=name[i];
    reverse=char+reverse;
  }
  stdout.write("reverse string is: $reverse");
}