import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';
import 'package:toast/toast.dart';

class Options extends StatelessWidget {
  const Options({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Text(
                "CHOOSE YOUR PREFERRED OPTION",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w800),
              ),
              SizedBox(
                height: 16,
              ),
              InkWell(
                onTap: ()
                {
                  Toast.show("Clicked Option 1",
                      context,
                      duration: Toast.LENGTH_LONG,
                      gravity: Toast.BOTTOM
                  );
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      color: Colors.white38,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        "assets/logo_white.png",
                        height: 80,
                        width: 80,
                        fit: BoxFit.fill,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Flexible(
                            child: Text(
                              "YOUTUBE GUIDANCE & GAME GUIDANCE",
                              textAlign: TextAlign.start,
                            ),
                          ),
                          IconButton(
                            icon: const Icon(Icons.help),
                            onPressed: () {

                            },
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),
              InkWell(
                onTap: (){
                  Toast.show("Clicked Option 2",
                      context,
                      duration: Toast.LENGTH_LONG,
                      gravity: Toast.BOTTOM
                  );
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      color: Colors.white38,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        "assets/logo_white.png",
                        height: 80,
                        width: 80,
                        fit: BoxFit.fill,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Flexible(
                            child: Text(
                              "GAME DEVELOPMENT",
                              textAlign: TextAlign.start,
                            ),
                          ),
                          IconButton(
                            icon: const Icon(Icons.help),
                            onPressed: (){

                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),
              InkWell(
                onTap: (){
                  Toast.show("Clicked Option 3",
                      context,
                      duration: Toast.LENGTH_LONG,
                      gravity: Toast.BOTTOM
                  );
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      color: Colors.white38,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        "assets/logo_white.png",
                        height: 80,
                        width: 80,
                        fit: BoxFit.fill,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Flexible(
                            child: Text(
                              "CERTIFICATION COURSES",
                              textAlign: TextAlign.start,
                            ),
                          ),
                          IconButton(
                            icon: const Icon(Icons.help),
                            onPressed: (){

                            },
                          ),
                        ],
                      )
                    ],
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
