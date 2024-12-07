import 'dart:io';

void main() {
  int size;
  stdout.writeln("Enter size of list: ");
  size = int.parse(stdin.readLineSync()!);
  List<int> num = [];
  int j;

  for ( j = 0; j < size; j++) {
    stdout.writeln("Enter a num $j: ");
    num.add(int.parse(stdin.readLineSync()!));
  }

  for(int k=0; k<num.length; k++) {
    int count = 0;

    for (int m = 0; m < num.length; m++) {
      if (num[k] == num[m])
        count++;
    }

    if (count == 1)
      stdout.writeln("elements appear once in  $num is: ${num[k]}");

  }
  stdout.write("No such element exist in: $num");
}