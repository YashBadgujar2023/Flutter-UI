import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:panchat/screen/Login%20Page/otp.dart';
import 'package:panchat/screen/widget/Custom_scaffold.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Sign_up extends StatefulWidget {
  const Sign_up({super.key});

  @override
  State<Sign_up> createState() => _Sign_upState();
}

class _Sign_upState extends State<Sign_up> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Custom_Scaffold(
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width*0.060),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              color: Colors.white12,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Sign Up",style: TextStyle(color: Colors.blue.shade500,fontSize: 40,fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                  Align(
                    alignment: Alignment.bottomLeft,
                      child: Text("Email :",style: TextStyle(fontSize:18),)
                  ),
                  CustomTextfield(emailcontroller,"Enter Email"),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Text("Password :",style: TextStyle(fontSize:18),),
                  ),
                  CustomTextfield(passwordcontroller,"Enter Password"),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Text("Phone no:",style: TextStyle(fontSize:18),),
                  ),
                  CustomTextfield(phonecontroller,"Enter Phone"),
                  SizedBox(height: 10,),
                  Container(
                    width: double.infinity,
                   child: CustomElevatedButton(
                           () {
                             log("Submitted-Sign Up");
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>otp()));
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
  CustomTextfield(TextEditingController controller,String hint){
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: TextField(
        controller: controller,
        style: TextStyle(fontSize:12),
        decoration: InputDecoration(
          hintText: hint,
            filled: true,
          fillColor: Colors.white24,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15)
          )
        ),
      ),
    );
  }
  CustomElevatedButton(VoidCallback controller,String text){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 5),
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
  Customdivider(String name){
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
