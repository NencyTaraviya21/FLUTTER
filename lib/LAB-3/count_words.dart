import 'dart:io';

Map<String,dynamic> countWords(String str){
  List<String> sentence = str.split(" ");
  Map<String,dynamic> count = {};

  for (String value in sentence) {
    count[value] = (count[value] ?? 0)+1; //means assign 0 if null value comes and make count
  }
  return count;
}
void main(){
  String str = 'This is what it is and This is what you have to remember';
  Map<String,dynamic> result = countWords(str);
  print(result);
}