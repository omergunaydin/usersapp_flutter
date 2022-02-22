import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/constants.dart';
import '../models/user.dart';

class ProfilePage extends StatefulWidget {
  final User user;
  const ProfilePage({Key? key, required this.user}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
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
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 35.w,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 25.w,
                      ),
                      Text(
                        'Profile',
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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 20.h,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(15.w, 12.w, 15.w, 12.w),
                          child: Hero(
                            tag: widget.user.id,
                            child: SizedBox(
                              width: 0.25.sw,
                              height: 0.25.sw,
                              child: CircleAvatar(
                                radius: 40,
                                backgroundImage:
                                    NetworkImage(widget.user.image),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          widget.user.name,
                          style: TextStyle(fontSize: 30.sp),
                        ),
                        Text(
                          widget.user.job,
                          style: const TextStyle(color: Colors.grey),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 0.05.sw),
                          child: const Divider(thickness: 1),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        IntrinsicWidth(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Constants.primaryColor,
                                    foregroundColor: Constants.iconColor,
                                    child: const Icon(Icons.phone),
                                  ),
                                  SizedBox(
                                    width: 15.w,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Mobile Number',
                                        style: Constants.boldText,
                                      ),
                                      Text(widget.user.phone)
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Constants.primaryColor,
                                    foregroundColor: Constants.iconColor,
                                    child: const Icon(Icons.mail),
                                  ),
                                  SizedBox(
                                    width: 15.w,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'E-mail Adress',
                                        style: Constants.boldText,
                                      ),
                                      Text(widget.user.email)
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Constants.primaryColor,
                                    foregroundColor: Constants.iconColor,
                                    child: const Icon(Icons.web),
                                  ),
                                  SizedBox(
                                    width: 15.w,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Web Site',
                                        style: Constants.boldText,
                                      ),
                                      Text(widget.user.website)
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Constants.primaryColor,
                                    foregroundColor: Constants.iconColor,
                                    child: const Icon(Icons.person_pin_circle),
                                  ),
                                  SizedBox(
                                    width: 15.w,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Company',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(widget.user.company.name)
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 0.05.sw),
                          child: const Divider(
                            thickness: 1,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.h),
                          child: Text(
                            'Works With',
                            style: TextStyle(
                                fontSize: 22.sp, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Flexible(
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: widget.user.workswith.length,
                              itemBuilder: ((context, index) {
                                var oankiMember = widget.user.workswith[index];
                                return Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 3.w),
                                  child: Column(
                                    children: [
                                      Card(
                                        elevation: 2,
                                        child: Padding(
                                          padding: EdgeInsets.fromLTRB(
                                              15.w, 25.w, 15.w, 25.w),
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                width: 0.15.sw,
                                                height: 0.15.sw,
                                                child: CircleAvatar(
                                                  radius: 40,
                                                  backgroundImage: NetworkImage(
                                                      oankiMember.image),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 10.h,
                                              ),
                                              Text(
                                                oankiMember.name,
                                                style:
                                                    TextStyle(fontSize: 20.sp),
                                              ),
                                              SizedBox(
                                                height: 3.h,
                                              ),
                                              Text(
                                                oankiMember.job,
                                                style: TextStyle(
                                                    fontSize: 18.sp,
                                                    color: Colors.grey),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              })),
                        )
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
