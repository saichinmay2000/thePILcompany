import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:thepilcompany/CareerAssesment.dart';
import 'package:toast/toast.dart';

class Otp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                Container(
                  width: 150,
                  height: 200,
                  child: Image.asset("assets/logo.jpg"),
                ),
                OTPTextField(
                  length: 6,
                  width: MediaQuery.of(context).size.width,
                  textFieldAlignment: MainAxisAlignment.spaceAround,
                  fieldWidth: 55,
                  fieldStyle: FieldStyle.box,
                  outlineBorderRadius: 15,
                  onChanged: (pin){
                    print("Changed Pin" +pin);
                  },
                  onCompleted: (pin){
                    print("Completed Pin" +pin);
                  },
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: FlatButton(
                    onPressed: (){
                      Toast.show(
                          "Login Succeeded!!!\n Welcome to PIL",
                          context,
                          duration: Toast.LENGTH_LONG,
                          gravity: Toast.CENTER
                      );
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Career()));
                    },
                    child: Text(
                      "Login",style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
