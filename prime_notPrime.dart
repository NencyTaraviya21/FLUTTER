import 'dart:io';

int prime(int num){
  int count=0;

  for(int i=1;i<=num;i++){
    if(num%i==0){
      count++;
    }
  }
  if(count==2)
    return 1;
  else{
    return 0;
  }
}

void main(){
  stdout.writeln("Enter number: ");
  int num=int.parse(stdin.readLineSync()!);
  prime(num);
  var num_return = prime(num);
  if(num_return==1)
    print("prime");
  else{
    print("Not prime");
  }
}