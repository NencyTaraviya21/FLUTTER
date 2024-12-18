import 'dart:io';

void main(){
  List<String> cities = ['Delhi', 'Mumbai', 'Bangalore', 'Hyderabad','Ahemdabad'];
  int indexx=cities.indexOf("Ahemdabad");

  if(indexx!=-1){
    cities[indexx]='surat';
  }
  print(cities);
}