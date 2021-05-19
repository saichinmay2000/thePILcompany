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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 32,
              ),
              Container(
                width: 150,
                height: 200,
                child: Image.asset("assets/logo.jpg"),
              ),
              SizedBox(
                height: 32,
              ),
              Text(
                "OTP: ",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w100,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              OTPTextField(
                length: 6,
                width: 300,
                textFieldAlignment: MainAxisAlignment.spaceAround,
                fieldWidth: 50,
                fieldStyle: FieldStyle.box,
                otpFieldStyle: OtpFieldStyle(
                    borderColor: Colors.white,
                    enabledBorderColor: Colors.white,
                    focusBorderColor: Colors.white),
                outlineBorderRadius: 8,
                onChanged: (pin) {
                  print("Changed Pin" + pin);
                },
                onCompleted: (pin) {
                  print("Completed Pin" + pin);
                },
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 32),
                child: ElevatedButton(
                  // style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    Toast.show("Login Succeeded!!!\n Welcome to PIL", context,
                        duration: Toast.LENGTH_LONG, gravity: Toast.CENTER);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Career()));
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
