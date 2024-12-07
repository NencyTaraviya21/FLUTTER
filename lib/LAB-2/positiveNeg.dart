import 'dart:io';
void main() {
  int ? num;
  stdout.writeln("Enter a num: ");
  num = int.parse(stdin.readLineSync()!);

  if (num > 0) {
    stdout.writeln("number is positive");
  }
  if (num < 0) {
    stdout.writeln("number is negative");
  }
  if (num == 0) {
    stdout.writeln("number is nuteral");
  }
}