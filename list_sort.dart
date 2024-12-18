import 'dart:io';

void main(){
  List<int> num = [];

  for ( int j = 0; j < 5; j++) {
    stdout.writeln("Enter a num $j: ");
    num.add(int.parse(stdin.readLineSync()!));
  }
  print(num);

  for(int i=0; i<num.length; i++){
    for(int k=0; k<num.length-i-1; k++){
      if(num[k]>num[k+1]){
        int temp=num[i];
        num[i]=num[k];
        num[k] = temp;
      }
    }
  }
  // num.sort();
  print("new list is: $num");
}
