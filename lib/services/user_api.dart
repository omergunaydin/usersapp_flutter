import 'dart:convert';

import 'package:flutter/material.dart';

import '../models/user.dart';

class UserApi {
  static Future<List<User>> getUserData(BuildContext context) async {
    //List<User> _list = [];
    var result = await DefaultAssetBundle.of(context)
        .loadString('assets/data/data.json');
    var jsonArray = jsonDecode(result);
    List<User> allUsers =
        (jsonArray as List).map((e) => User.fromJson(e)).toList();
    debugPrint(allUsers.toString());
    return allUsers;
  }
}
