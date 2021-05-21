import 'package:flutter/material.dart';

class Options extends StatelessWidget {
  const Options({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 20,),
              Text(
                "CHOOSE YOUR PREFERRED OPTION",
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.w800),
              ),
              SizedBox(height: 30,),
              Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white38,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  children: <Widget>[
                    Image.asset("assets/logo_white.png", height: 100, width: 150,),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20.0,0,0,0),
                          child: Text(
                              "YOUTUBE GUIDANCE & GAME GUIDANCE",
                              textAlign: TextAlign.start,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20.0,0,0,0),
                          child: IconButton(
                            icon: const Icon(Icons.help),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white38,
                    borderRadius: BorderRadius.circular(10)
              ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Image.asset("assets/logo_white.png", height: 100, width: 150,),
                    Row(
                      children: <Widget>[
                        Padding(
                            padding: const EdgeInsets.fromLTRB(20.0, 0, 0, 0),
                            child: Text(
                              "GAME DEVELOPMENT",
                              textAlign: TextAlign.start,
                            ),
                        ),
                        Padding(
                            padding: const EdgeInsets.fromLTRB(20.0, 0, 0, 0),
                            child: IconButton(
                              icon: const Icon(Icons.help),
                            ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white38,
                    borderRadius: BorderRadius.circular(10)
                ),
              child: Column(
                children: <Widget>[
                  Image.asset("assets/logo_white.png", height: 100, width: 150,),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20.0, 0, 0, 0),
                        child: Text(
                          "CERTIFICATION COURSES",
                          textAlign: TextAlign.start,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20.0, 0, 0, 0),
                        child: IconButton(
                          icon: const Icon(Icons.help),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
