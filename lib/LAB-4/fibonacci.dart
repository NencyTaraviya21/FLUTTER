import 'dart:io';
void fibonacci(int number, int num1, int num2){
  int sum;

  for(int i=2;i<=number;i++){
    sum=num1+num2;
    print(sum);
    num1=num2;
    num2=sum;
  }
}

void main(){
  stdout.writeln("Enter number: ");
  int number=int.parse(stdin.readLineSync()!);
  fibonacci(number, 0, 1);
}