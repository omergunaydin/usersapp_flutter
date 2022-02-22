import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:usersapp_flutter/pages/profilepage.dart';
import '../models/user.dart';

class UserListItem extends StatelessWidget {
  final User user;
  const UserListItem({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(25.w, 5.w, 25.w, 5.w),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ProfilePage(
                    user: user,
                  )));
        },
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          elevation: 1,
          shadowColor: Colors.grey,
          color: Colors.white,
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(20.w, 15.w, 20.w, 15.w),
                child: Hero(
                  tag: user.id,
                  child: SizedBox(
                    width: 0.13.sw,
                    height: 0.13.sw,
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(user.image),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 25.w,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      user.name,
                      style: TextStyle(fontSize: 22.sp),
                    ),
                    Text(
                      user.job,
                      style: TextStyle(fontSize: 18.sp),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
