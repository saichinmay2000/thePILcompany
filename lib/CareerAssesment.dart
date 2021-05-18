import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:argon_buttons_flutter/argon_buttons_flutter.dart';

import 'chooseoption.dart';

class Career extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        alignment: Alignment.topCenter,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: <Widget>[
                Container(child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "CAREER ASSESMENT",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                    SvgPicture.asset("assets/career.svg"),
                    Text(
                      "Career Assessment Content Here!!\n \n \n Lorem Ipsum is simply dummy text of the printing \n and typesetting industry. Lorem Ipsum has been the \n industry's standard dummy text ever since the 1500s,\n when an unknown printer took a galley of type and\n scrambled it to make a type specimen book\n It has survived not only five centuries, but also\n the leap into electronic typesetting, remaining\n essentially unchanged. It was popularised in the\n 1960s with the release of Letraset sheets containing\n Lorem Ipsum passages, and recently with desktop\n publishing software like Aldus PageMaker including\n versions of Lorem Ipsum.\n",
                      style: TextStyle(color: Colors.white),
                    ),
                    ArgonButton(
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.45,
                        minWidth: MediaQuery.of(context).size.width * 0.30,
                        onTap: (startLoading, stopLoading, btnState)
                        {
                          if(btnState == ButtonState.Idle)
                            {
                              startLoading();

                              Navigator.push(context, MaterialPageRoute(builder: (context) => Choose()));
                            }
                          else
                            {
                              stopLoading();
                            }
                        },
                        child: Text(
                          "Start Assessment",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w700
                          ),
                        ),
                      loader: Container(
                        padding: EdgeInsets.all(10),
                        child: SpinKitRotatingCircle(
                          color: Colors.white,
                          duration: const Duration(milliseconds: 2000),
                          // size: loaderWidth ,
                      ),
                      ),
                    ),
                  ],
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
