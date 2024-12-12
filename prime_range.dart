import 'dart:io';

bool isPrime(int num) {
  if (num < 2) return false;
  for (int i = 2; i <= num ~/2; i++) { //for three it won't execute as it's start point becomes greater then ending point hence returns true whic is correct
    if (num % i == 0)                  //here num/2 because it's obv if num isn't prime that upto half og it's no. it'll give factors like 6. num/2=3 before 3 it gives 2 as a factor
      return false;
  }
  return true;
}
  List <int> isPrimeInRange(int start, int end) {
    List <int> prime_no = [];
    for(int num=start; num<=end; num++){
      if (isPrime(num)) {
        prime_no.add(num);
      }
    }
    return prime_no;
  }

void main(){
  int ? start,end;
  stdout.writeln("Enter a starting point: ");
  start=int.parse(stdin.readLineSync()!);

  stdout.writeln("Enter an ending point: ");
  end=int.parse(stdin.readLineSync()!);

  print(isPrimeInRange(start,end));
}