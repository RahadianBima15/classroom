// import 'package:http/http.dart' as http;
import 'dart:convert';

// import 'package:flutter/foundation.dart';

class User {
  int total;
  List<Data> data;

  User({this.total, this.data});

  factory User.fromJson(Map<String, dynamic> map) {
    var list = map['data'] as List;
    print(list.runtimeType); //returns List<dynamic>
    List<Data> dataList = list.map((i) => Data.fromJson(i)).toList();
    return User(
      total: map['total'],
      data: dataList,
    );
  }
}

class Data {
  int id;
  String email;
  String first_name;
  String last_name;
  String avatar;

  Data({this.id, this.email, this.first_name, this.last_name, this.avatar});

  factory Data.fromJson(Map<String, dynamic> map) {
    return Data(
        id: map["id"],
        email: map["email"],
        first_name: map["first_name"],
        last_name: map["last_name"],
        avatar: map["avatar"]);
  }
}

// class GetResult {
//   String total;
//   String id;
//   String email;
//   String first_name;
//   String last_name;
//   String avatar;

//   GetResult(
//       {this.total,
//       this.id,
//       this.email,
//       this.first_name,
//       this.last_name,
//       this.avatar});

//   factory GetResult.fromJson(Map<String, dynamic> map) {
//     return GetResult(
//         total: map["total"],
//         id: map["id"],
//         email: map["email"],
//         first_name: map["first_name"],
//         last_name: map["last_name"],
//         avatar: map["avatar"]);
//   }
//   Map<String, dynamic> toJson() {
//     return {
//       "total": total,
//       "id": id,
//       "email": email,
//       "first_name": first_name,
//       "last_name": last_name,
//       "avatar": avatar
//     };
//   }

//   @override
//   String toString() {
//     return 'GetResult{total: $total, id: $id, email: $email, first_name: $first_name, last_name: $last_name, avatar: $avatar}';
//   }
// }

List<User> userFromJson(String jsonData) {
  final data1 = json.decode(jsonData);
    List<dynamic> userList = data1['data'];
    return userList[0]['name'];
  
}

// String userToJson(GetResult data) {
//   final jsonData = data.toJson();
//   return json.encode(jsonData);
// }
