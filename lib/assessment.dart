import 'package:flutter/material.dart';

class Assessment extends StatelessWidget {
  const Assessment({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              child: SafeArea(
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                      "CAREER ASSESSMENT",
                      style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
