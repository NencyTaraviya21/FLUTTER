import 'dart:io';
import 'package:flutter_project/LAB-5/Utils/string_const.dart';
import 'package:flutter_project/LAB-5/phn_dic_main.dart';

void main() {
  Phonebook phnbook = Phonebook();

  List<Map<String, dynamic>> phonebook = [];
  int ? choice;

  do{
    print("1 for insert"
        "\n2 for read"
        "\n3 for search"
        "\n4 for exit");
    print("enter your choice");
    choice = int.parse(stdin.readLineSync()!);
    switch (choice) {

      case 1: // region INSERT
        stdout.write("Enter name: ");
        String name = stdin.readLineSync()!;
        stdout.write("Enter number: ");
        String num = stdin.readLineSync()!;
        phnbook.addDetails(num: num, name: name);
        break;
    //endregion
      case 2: //region READ
        List<Map<String, dynamic>> numberList = phnbook.getAllNumbers();
        for(var data in numberList){
          printWarning("phonebook dictionary: ${data[NAME]}, ${data[NUMBER]}");
        }
        break;
    //endregion
      case 3: //region search
        stdout.write("Enter search data: ");
        String searchData = stdin.readLineSync()!;
        phnbook.searchNumber(searchData: searchData);
        break;
    //endregion
      case 4: //region exit
        print("Thanks for visiting");
        break;
        //endregion
      default:
        print("Invalid choice");
    }
  }
  while (choice != 4);
}