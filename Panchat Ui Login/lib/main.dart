import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:panchat/screen/Home/HomePage.dart';
import 'package:panchat/screen/Login%20Page/choice_page.dart';
import 'package:panchat/screen/splash/splash.dart';
import 'package:panchat/screen/widget/Custom_scaffold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(
          useMaterial3: true,
        ),
        // home: const splash_screen(),
        home: splash_screen(),
      ),
    );
  }
}