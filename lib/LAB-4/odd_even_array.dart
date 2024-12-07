import 'dart:io';

void main(){
  int ? size;
  stdout.writeln("Enter size of list: ");
  size=int.parse(stdin.readLineSync()!);
  List<int> num = [];
  int j;
  

  for ( j = 0; j < size; j++) {
    stdout.writeln("Enter a num $j: ");
    num.add(int.parse(stdin.readLineSync()!));
  }

  for(int k=0;k<num.length;k++){
    if(num[k]%2==0)
      print("even no. is: ${num[k]}");
    else{
      print("Odd no. is: ${num[k]}");
    }
  }
}