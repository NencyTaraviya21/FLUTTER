import 'dart:io';
import 'package:flutter_project/LAB-5/Utils/string_const.dart';
import 'package:flutter_project/LAB-5/friends_main.dart';

void main(){
  FriendsDictionary frnd_dic = FriendsDictionary();

  List<Map<String, dynamic>> friends_list = [];
  int ? choice;

  do {
    print("Enter your choice:"
        "\n1 for insert"
        "\n2 for read"
        "\n3 for search"
        "\n4 for edit"
        "\n5 for exit");
    choice = int.parse(stdin.readLineSync()!);
    switch(choice){
      case 1: //region INSERT DETAILS
        stdout.write("Enter name: ");
        String friend_name = stdin.readLineSync()!;
        stdout.write("Enter age: ");
        String age = stdin.readLineSync()!;
        frnd_dic.addFriendsDetails(friend_name: friend_name, age: age);
        break;
        //endregion
      case 2: //region GET DETAILS
        List<Map<String, dynamic>> getall = frnd_dic.getAllFriendsDetails();
        for(var data in getall){
          printWarning("Details of Friend --> [name:${data[friendName]}, age:${data[AGE]}]");
        }
        break;
        //endregion
      case 3: //region SEARCH
        print("Enter name to search details: ");
        String searchData = stdin.readLineSync()!;
        frnd_dic.searchFriend(searchData: searchData);
        break;
        //endregion
      case 4: //region EDIT
        stdout.write("Enter id: ");
        int id = int.parse(stdin.readLineSync()!);
        stdout.write("Enter name: ");
        String friend_name = stdin.readLineSync()!;
        stdout.write("Enter age: ");
        String age = stdin.readLineSync()!;
        frnd_dic.editDetails(friend_name: friend_name, age: age, id: id);
        break;
        //endregion
      case 5: //region EXIT
        print("Thanks for visiting");
        break;
        //endregion
      default:
        print("Invalid choice");
    }
  }while(choice!=5);
}