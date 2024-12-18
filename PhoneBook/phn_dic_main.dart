import 'Utils/string_const.dart';

class Phonebook{
  List<Map<String,dynamic>> phnlist = [];

  void addDetails({required String num, required String name}){
    Map<String, dynamic> map = {};
    map[NAME]= name;
    map[NUMBER]=num;
    phnlist.add(map);
  }

  List<Map<String,dynamic>> getAllNumbers(){
    return phnlist;
  }

  void searchNumber({required searchData}){
    for(var data in phnlist){
      if(data[NAME].toString().toLowerCase().contains(searchData.toString().toLowerCase()) ||
          data[NUMBER].toString().toLowerCase().contains(searchData.toString().toLowerCase())){
          printBlue("Your searched data: ${data[NAME]}, ${data[NUMBER]}");
      }
    }
  }
}