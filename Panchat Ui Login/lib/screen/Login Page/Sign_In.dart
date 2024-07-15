import 'dart:developer';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widget/Custom_scaffold.dart';

class Sign_in extends StatefulWidget {
  const Sign_in({super.key});

  @override
  State<Sign_in> createState() => _Sign_inState();
}

class _Sign_inState extends State<Sign_in> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Custom_Scaffold(
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.060),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white12,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Log In",style: TextStyle(color: Colors.blue.shade500,fontSize: 40,fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Text("Email :",style: TextStyle(fontSize:18),)
                  ),
                  CustomTextfield(emailcontroller,"Enter Email"),
                  SizedBox(height: 10,),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text("Password :",style: TextStyle(fontSize:18),),
                  ),
                  CustomTextfield(passwordcontroller,"Enter Password"),
                  SizedBox(height: 5.h,),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: InkWell(onTap:(){},child: Text("Forgot Password?",style: TextStyle(fontSize:12,color: Colors.blue),)),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.7,
                    child: CustomElevatedButton(
                            () {
                          log("Submitted-Sign Up");
                        },
                        "Submit"),
                  ),
                  SizedBox(height: 15,),
                  Customdivider("Sign Up"),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                          onTap: (){
                            log("apple");
                          },
                          child: FaIcon(FontAwesomeIcons.apple,size: 30,color: Colors.black,)),
                      InkWell(
                        onTap: (){
                          log("Facebook");
                        },
                        child: FaIcon(FontAwesomeIcons.facebook,size: 30,color: Colors.blue,),
                      ),
                      InkWell(
                        onTap: (){
                          log("google");
                        },
                        child:  FaIcon(FontAwesomeIcons.google,size: 30,),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        )
    );
  }

  CustomTextfield(TextEditingController controller, String hint) {
    return TextField(
      controller: controller,
      style: TextStyle(fontSize: 12.sp),
      decoration: InputDecoration(
          hintText: hint,
          filled: true,
          fillColor: Colors.white24,
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(15))),
    );
  }

  CustomElevatedButton(VoidCallback controller, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
      child: CupertinoButton(
          onPressed: controller,
          // style: ElevatedButton.styleFrom(
          //     padding: EdgeInsets.all(5.h),
          //     backgroundColor: Colors.black12,
          //     shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.all(Radius.circular(12.h)),
          //     )),
          color: Colors.black26,
          borderRadius: BorderRadius.all(Radius.circular(12)),
          child: Text(
            text,
            style: TextStyle(color: Colors.white54, fontSize: 18.sp),
          )),
    );
  }
  Customdivider(String name) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            thickness: 0.5,
            indent: 5,
            endIndent: 10,
            color: Colors.white,
          ),
        ),
        Text(name),
        Expanded(
          child: Divider(
            thickness: 0.5,
            indent: 10,
            endIndent: 5,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
class mobilesignup extends StatelessWidget {
  const mobilesignup({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

