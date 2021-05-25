import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class feed extends StatelessWidget {
  const feed({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Icon(Icons.menu),
                  ),
                  Image.asset("assets/logo_white.png"),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                    child: Icon(Icons.search),
                  ),
                ],
              ),
              height: 75,
              alignment: Alignment.centerRight,
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(0, 4, 0, 4),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.fromLTRB(8, 0, 8, 16),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                radius: 20,
                                foregroundImage: AssetImage("assets/logo.jpg"),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text("PIL Admin",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white)),
                              Flexible(
                                child: Container(),
                              )
                            ],
                          ),
                        ),
                        Image.asset(
                          "assets/image.jpg",
                          width: MediaQuery.of(context).size.width,
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(8, 16, 8, 0),
                          child: Column(
                            children: [
                              Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor",
                                maxLines: 3,
                                style: TextStyle(color: Colors.white60),
                                textAlign: TextAlign.left,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  IconButton(
                                      icon: Icon(
                                        CupertinoIcons.heart_fill,
                                      ),
                                      onPressed: () async {}),
                                  IconButton(
                                      icon: Icon(Icons.share),
                                      onPressed: () async {}),
                                  IconButton(
                                      icon: Icon(Icons.bookmark_border),
                                      onPressed: () async {}),
                                  Flexible(
                                    child: Container(),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
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
