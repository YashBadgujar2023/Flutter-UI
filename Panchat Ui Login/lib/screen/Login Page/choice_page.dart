import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:panchat/screen/Login%20Page/Sign_In.dart';
import 'package:panchat/screen/Login%20Page/Sign_Up.dart';
import 'package:panchat/screen/widget/Custom_scaffold.dart';

class choice extends StatefulWidget {
  const choice({super.key});

  @override
  State<choice> createState() => _choiceState();
}

class _choiceState extends State<choice> {
  @override
  Widget build(BuildContext context) {
    return Custom_Scaffold(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
            ),
            /*RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: "Welcome ",style: TextStyle(fontSize: 30,)),
                    TextSpan(text: "To  ",style: TextStyle(fontSize: 18)),
                    TextSpan(text: "Panchat",style: TextStyle(fontSize: 40,color: Colors.black54,fontWeight: FontWeight.bold)
                    ),
                  ]
                )
            ),*/
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: DefaultTextStyle(
                style: const TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
                child: AnimatedTextKit(
                  isRepeatingAnimation: false,
                  animatedTexts: [
                    TyperAnimatedText('Welcome To'),
                    TyperAnimatedText('Panchat',textStyle:TextStyle(fontSize: 50,color: Colors.white54)),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                    child:CustomElevatedButton(() {
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>Sign_in()));
                    }, "Sign in"),
                ),
                Expanded(
                    child:CustomElevatedButton(
                            () {
                              Navigator.push(context, MaterialPageRoute(builder: (_)=>Sign_up()));
                            },
                        "Sign Up"),
                )
              ],
            )
          ],
        )
    );
  }
  CustomElevatedButton(VoidCallback controller,String text){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 5),
      child: ElevatedButton(
          onPressed:controller,
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(10),
            backgroundColor: Colors.black12,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
            )
          ),
          child: Text(text,style: TextStyle(color: Colors.white54,fontSize: 22),)
      ),
    );
  }
}
