import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:thepilcompany/otp.dart';
import 'package:toast/toast.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(top: 60.0),
              child: Center(
                child: Container(
                  height: 200,
                  width: 150,
                  child: Image.asset("assets/logo.jpg"),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: IntlPhoneField(
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(),
                  ),
                ),
                initialCountryCode: "IN",
                onChanged: (phone){
                  print(phone.completeNumber);
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextButton(
                onPressed: (){
                  Toast.show(
                      "OTP sent to Mobile Number",
                      context,
                      duration: Toast.LENGTH_LONG,
                      gravity: Toast.BOTTOM,
                  );
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Otp()));
                },
                child: Text(
                  'Get OTP', style: TextStyle(color: Colors.black, fontSize: 15)
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}