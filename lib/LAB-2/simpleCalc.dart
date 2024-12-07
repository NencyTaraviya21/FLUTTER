import 'dart:io';
void main() {
  String str = '';
  stdout.writeln("Enter a string: ");
  str = (stdin.readLineSync()!);
  var temp;

  for (int i = 0; i < str.length; i++) {
    temp = str[i];
  }
}

