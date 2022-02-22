import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:usersapp_flutter/constants/constants.dart';
import 'package:usersapp_flutter/widgets/user_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //UserApi.getUserData(context);
    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) => SafeArea(
          child: Container(
            color: Constants.primaryColor,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(30.w, 40.w, 30.w, 40.w),
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_back_ios,
                        size: 35.w,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 25.w,
                      ),
                      Text(
                        'Add Member',
                        style: Constants.menuBaslik,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40.h),
                          topRight: Radius.circular(40.h),
                        ),
                        color: Constants.secondaryColor),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20.h,
                        ),
                        Padding(
                          padding: EdgeInsets.all(35.w),
                          child: TextField(
                            decoration: Constants.textFieldDecoration,
                          ),
                        ),
                        const UserList(),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
