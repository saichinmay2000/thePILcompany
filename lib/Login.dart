import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:thepilcompany/feed.dart';
import 'package:thepilcompany/otp.dart';
import 'package:toast/toast.dart';
import 'package:gradient_ui_widgets/gradient_ui_widgets.dart' as grad;

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Gradient g1 = LinearGradient(
    colors: [
      Color(0xFF7F00FF),
      Color(0xFFE100FF),
    ],
  );
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        primaryColor: Colors.white,
      ),
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 60.0),
                child: Center(
                  child: Container(
                    height: 200,
                    width: 150,
                    child: Image.asset("assets/logo_white.png"),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: IntlPhoneField(
                  dropDownArrowColor: Colors.white,
                  countryCodeTextColor: Colors.white,
                  decoration: InputDecoration(
                      labelText: 'Phone Number',
                      labelStyle: TextStyle(color: Colors.white),
                      contentPadding: EdgeInsets.zero,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 1),
                      )),
                  initialCountryCode: "IN",
                  onChanged: (phone) {
                    print(phone.completeNumber);
                  },
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: grad.GradientElevatedButton(
                    gradient: g1,
                    onPressed: (){
                      Toast.show("OTP sent sucessfully",
                          context,
                          duration: Toast.LENGTH_LONG,
                          gravity: Toast.BOTTOM
                      );
                      Navigator.push(context, MaterialPageRoute(builder: (context) => feed()));
                    },
                    child: Text("Get OTP"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}