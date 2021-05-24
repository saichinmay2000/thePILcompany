import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:gradient_ui_widgets/gradient_ui_widgets.dart' as grad;
import 'package:thepilcompany/chooseoption.dart';


class Otp extends StatelessWidget {
  Gradient g1 = LinearGradient(
    colors: [
      Color(0xFF7F00FF),
      Color(0xFFE100FF),
    ],
  );
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
                child: Image.asset("assets/logo_white.png"),
              ),
              SizedBox(
                height: 32,
              ),
              Text(
                "Enter your One-Time Password(OTP)",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
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
                child: grad.GradientElevatedButton(
                  gradient: g1,
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Options()));
                  },
                  child: Text("Login"),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 0),
                child: grad.GradientElevatedButton(
                  gradient: g1,
                  onPressed: (){

                  },
                  child: Text("Resend OTP"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
