import 'dart:io';
void comparison(List<int> height, List<String> name){
  print("old list of height is: $height");
  print("old list of name is: $name");

  for(int h=0; h<height.length-1; h++){
    // print(height[h]);
    for(int s=0; s<height.length-1-h; s++) {
      if (height[s] < height[s + 1]) {
        int temp = height[s + 1];
        height[s + 1] = height[s];
        height[s] = temp;

        String temp2 = name[s + 1];
        name[s + 1] = name[s];
        name[s] = temp2;
      }
    }
  }
  print("new list of height is: $height");
  print("new list of name is: $name");
}
void main(){
  int size;
  stdout.writeln("Enter size of list: ");
  size = int.parse(stdin.readLineSync()!);
  List<int> height = [];
  List<String> name = [];
  int j;
  int k;

  for ( j = 0; j < size; j++){
    stdout.writeln("Enter a height at $j: ");
    height.add(int.parse(stdin.readLineSync()!));
  }

  for ( k = 0; k < size; k++){
    stdout.writeln("Enter a name at $k: ");
    name.add(stdin.readLineSync()!);
  }
  comparison(height, name);
}

