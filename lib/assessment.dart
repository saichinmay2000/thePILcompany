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
                child: Text(
                    "Questions Coming Soon\nStayTuned!",
                    style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
