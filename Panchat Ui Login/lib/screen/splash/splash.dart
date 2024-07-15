import 'dart:async';

import 'package:flutter/material.dart';
import 'package:panchat/screen/Login%20Page/choice_page.dart';
import 'package:panchat/screen/splash/splash_background.dart';
import 'package:rive/rive.dart';

class splash_screen extends StatefulWidget {
  const splash_screen({super.key});

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>const choice()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return splash_background(
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 300,
                  width: 300,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: const RiveAnimation.asset('assest/rive/empty.riv',)
              ),
              Text("Panchat",style: TextStyle(fontSize: 45,fontWeight: FontWeight.bold,fontFamily: "MadimiOne"),)
            ],
          ),
        ),
      ),
    );
  }
}
