import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:new_tic_tac_toe/utils/utils.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<bool> _onBackButton() {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              backgroundColor: appBackGround,
              title: Text(
                "Want To Quit?",
                style: customFontStyle,
              ),
              actions: [
                FlatButton(
                    color: Color(0xff525252),
                    onPressed: () {
                      SystemNavigator.pop();
                    },
                    child: Text(
                      "Yes",
                      style: customFontStyle,
                    )),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: FlatButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "No",
                      style: customFontStyle,
                    ),
                    color: Color(0xff525252),
                  ),
                )
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onBackButton,
      child: Scaffold(
        backgroundColor: appBackGround,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                // flex: 1,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Tic Tac Toe",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        letterSpacing: 4,
                        shadows: [
                          Shadow(
                            offset: Offset(6.0, 6.0),
                            blurRadius: 5.0,
                            color: Colors.black,
                          ),
                        ]),
                  ),
                ),
              ),
              Expanded(
                  flex: 2,
                  child: AvatarGlow(
                    duration: Duration(seconds: 4),
                    endRadius: 140,
                    child: Container(
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: CircleAvatar(
                          radius: 60,
                          backgroundColor: Colors.grey[800],
                          child: Image.asset(
                            'lib/images/img.png',
                            width: 80,
                          )),
                    ),
                  )),
              Flexible(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Play against",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          letterSpacing: 4,
                          shadows: [
                            Shadow(
                              offset: Offset(6.0, 6.0),
                              blurRadius: 5.0,
                              color: Colors.black,
                            ),
                          ]),
                    ),
                    Flexible(
                      // flex: 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FractionallySizedBox(
                            heightFactor: 0.2,
                            alignment: Alignment.center,
                            // padding: EdgeInsets.all(30),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: RaisedButton(
                                onPressed: () {
                                  Navigator.pushReplacementNamed(
                                      context, '/autoGame');
                                },
                                color: Colors.grey[800],
                                child: Text(
                                  "Computer",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22,
                                    letterSpacing: 2,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          FractionallySizedBox(
                            heightFactor: 0.2,
                            alignment: Alignment.center,
                            // padding: EdgeInsets.all(30),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: RaisedButton(
                                onPressed: () {
                                  Navigator.pushReplacementNamed(
                                      context, '/game');
                                },
                                color: Colors.grey[800],
                                child: Text(
                                  "Player",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22,
                                    letterSpacing: 2,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
