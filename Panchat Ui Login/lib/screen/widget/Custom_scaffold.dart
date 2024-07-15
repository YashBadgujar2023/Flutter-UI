import 'dart:ui';

import 'package:flutter/material.dart';

class Custom_Scaffold extends StatelessWidget {
  const Custom_Scaffold({super.key,required this.child});
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 300,
                height: 200,
                color: Colors.cyan.shade600,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 200,
                    height: 300,
                    decoration: BoxDecoration(
                    color: Colors.blueAccent,
                      borderRadius: BorderRadius.all(Radius.circular(200)),
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(200)),
                    ),
                  )
                ],
              ),
              Container(
                width: 200,
                height: 50,
                color: Colors.white,
              )
            ],
          ),
          BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 100,sigmaY: 100),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.black12,
            ),
          ),
          SafeArea(
              child: child!
          ),
        ],
      ),
    );
  }
}
