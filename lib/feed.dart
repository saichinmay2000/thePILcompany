import 'package:flutter/material.dart';

class feed extends StatelessWidget {
  const feed({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20,0,0,0),
                    child: Icon(Icons.menu),
                  ),
                  Image.asset("assets/logo_white.png"),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0,0,20,0),
                    child: Icon(Icons.search),
                  ),
                ],
              ),
              height: 75,
              alignment: Alignment.centerRight,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.black,
              height: 400,
              child: Row(
                children: <Widget>[
                  Image.asset(
                      "assets/image.jpg",
                      height: 500,
                      width: MediaQuery.of(context).size.width,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
