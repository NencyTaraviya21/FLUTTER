import 'package:flutter_project/LAB-5/Utils/string_const.dart';

class FriendsDictionary {
  List<Map<String, dynamic>> friendsList = [];

  void addFriendsDetails({required friend_name, required age}) {
    Map<String, dynamic> map_friends = {};
    map_friends[friendName] = friend_name;
    map_friends[AGE] = age;
    friendsList.add(map_friends);
  }

  List<Map<String, dynamic>> getAllFriendsDetails() {
    return friendsList;
  }

  void editDetails({required friend_name, required age, required id}) {
    Map<String, dynamic> mapFriends = {};
    mapFriends[friendName] = friend_name;
    mapFriends[AGE] = age;
    friendsList[id] = mapFriends;
  }

  void searchFriend({required searchData}) {
    for (var data in friendsList) {
      if (data[friendName].toString().toLowerCase().contains(
          searchData.toString().toLowerCase()) ||
          data[AGE].toString().toLowerCase().contains(
              searchData.toString().toLowerCase())) {
        printBlue("Your searched friend is: ${data[friendName]}, ${data[AGE]}");
      }
    }
  }
}