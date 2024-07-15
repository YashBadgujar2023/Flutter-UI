import 'package:flutter/material.dart';

class splash_background extends StatelessWidget {
  const splash_background({super.key,required this.child});
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF09203f),
                  Color(0xFF537895),
                ]
              ),
            ),
          ),
          SafeArea(
              child: child!
          ),
        ],
      )
    );
  }
}
