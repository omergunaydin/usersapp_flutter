import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:usersapp_flutter/pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(540, 1050),
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'User App',
        theme: ThemeData.light()
            .copyWith(textTheme: GoogleFonts.montserratTextTheme()),
        home: const HomePage(),
      ),
    );
  }
}
