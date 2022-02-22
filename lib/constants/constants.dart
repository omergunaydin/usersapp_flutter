import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Constants {
  Constants._();

  static Color primaryColor = const Color(0xFF6864CF);
  static Color secondaryColor = const Color(0xffEFF3FC);
  static Color textColor = Colors.black;
  static Color iconColor = Colors.white;

  static TextStyle menuBaslik = TextStyle(
      fontSize: _calculateFontSize(30),
      fontWeight: FontWeight.bold,
      color: Colors.white);

  static TextStyle boldText = const TextStyle(fontWeight: FontWeight.bold);

  static InputDecoration textFieldDecoration = const InputDecoration(
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(15)),
      borderSide: BorderSide(color: Colors.grey),
    ),
    suffixIcon: Icon(
      Icons.search_rounded,
      color: Colors.grey,
    ),
    border: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.red),
      borderRadius: BorderRadius.all(Radius.circular(15)),
    ),
    labelText: 'Search Member',
    floatingLabelStyle: TextStyle(color: Colors.grey),
  );

  static _calculateFontSize(int size) {
    if (ScreenUtil().orientation == Orientation.portrait) {
      return size.sp;
    } else {
      return (size * 1.1).sp;
    }
  }
}
