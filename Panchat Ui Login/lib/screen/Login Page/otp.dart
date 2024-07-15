import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:panchat/screen/widget/Custom_scaffold.dart';

class otp extends StatefulWidget {
  const otp({super.key});

  @override
  State<otp> createState() => _otpState();
}

class _otpState extends State<otp> {
  TextEditingController otpcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Custom_Scaffold(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.060,vertical: MediaQuery.of(context).size.height*0.05),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              color: Colors.white24
            ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.center,
                  child:Text("OTP",style: TextStyle(color: Colors.blue.shade500,fontSize: 40,fontWeight: FontWeight.bold),),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text("Please Enter the otp send by SMS",style: TextStyle(color: Colors.white),),
                ),
                SizedBox(height: 10,),
                CustomTextfield(otpcontroller,"Enter the OTP"),
                SizedBox(height: 10,),
                CustomElevatedButton(() { }, "Verify"),
              ],
            ),
          ),
        ),
    );
  }
  CustomTextfield(TextEditingController controller,String hint){
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: TextField(
        inputFormatters: [
          LengthLimitingTextInputFormatter(6),
        ],
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
            style: TextStyle(color: Colors.white54, fontSize: 18),
          )),
    );
  }
}
