import 'package:flutter/material.dart';
import 'package:usersapp_flutter/services/user_api.dart';
import 'package:usersapp_flutter/widgets/user_list_item.dart';

import '../models/user.dart';

class UserList extends StatefulWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  State<UserList> createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  late Future<List<User>> _listFuture;

  @override
  void initState() {
    super.initState();
    _listFuture = UserApi.getUserData(context);
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: FutureBuilder<List<User>>(
      future: _listFuture,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<User> _list = snapshot.data!;
          return ListView.builder(
              itemCount: _list.length,
              itemBuilder: ((context, index) {
                return UserListItem(user: _list[index]);
              }));
        } else if (snapshot.hasError) {
          return const Center(
            child: Text('Members are not loading for now!'),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    ));
  }
}
