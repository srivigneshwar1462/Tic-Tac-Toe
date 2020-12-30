// this is the intro page it contains appName and icon and buttons

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
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  letterSpacing: 1.2,
                ),
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
                  glowColor: Colors.white,
                  endRadius: 120.0,
                  duration: Duration(seconds: 4),
                  repeat: true,
                  showTwoGlows: true,
                  repeatPauseDuration: Duration(milliseconds: 100),
                  child: Container(
                    decoration: BoxDecoration(
                      // shape: BoxShape.circle,
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      // boxShadow: [
                      //   BoxShadow(
                      //       color: Colors.black54,
                      //       offset: Offset(4.0, 4.0),
                      //       blurRadius: 15.0,
                      //       spreadRadius: 1.0),
                      //   BoxShadow(
                      //       color: Colors.grey[800],
                      //       offset: Offset(-4.0, -4.0),
                      //       blurRadius: 15.0,
                      //       spreadRadius: 1.0),
                      // ],
                    ),
                    child: CircleAvatar(
                      backgroundColor: appBackGround,
                      child: Image.asset(
                        'lib/images/img.png',
                        height: 80,
                      ),
                      radius: 60.0,
                    ),
                  ),
                ),
              ),
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
                            heightFactor: 0.3,
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
                            heightFactor: 0.3,
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
              ),
              Flexible(
                child: Container(
                  child: Text(
                    "@Created by Srivignesh",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                      letterSpacing: 2,
                      // shadows: [
                      //   Shadow(
                      //     offset: Offset(6.0, 6.0),
                      //     blurRadius: 5.0,
                      //     color: Colors.black,
                      //   ),
                      // ]
                    ),
                    // style: myNewFontWhite.copyWith(fontSize: 20),
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

//
// class MyHome extends StatefulWidget {
//   @override
//   _MyHomeState createState() => _MyHomeState();
// }
//
// class _MyHomeState extends State<MyHome> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: appBackGround,
//       body: Center(
//         child: Container(
//           width: 200,
//           height: 200,
//           child: Icon(Icons.android, size: 60, color: Colors.grey[800]),
//
//           decoration: BoxDecoration(
//               color: appBackGround,
//               shape: BoxShape.circle,
//               // boxShadow: [
//               //   BoxShadow(
//               //       color: Colors.grey[600],
//               //       offset: Offset(4.0, 4.0),
//               //       blurRadius: 15.0,
//               //       spreadRadius: 1.0),
//               //   BoxShadow(
//               //       color: Colors.white,
//               //       offset: Offset(-4.0, -4.0),
//               //       blurRadius: 15.0,
//               //       spreadRadius: 1.0),
//               // ],
//
//               gradient: LinearGradient(
//                   begin: Alignment.topLeft,
//                   end: Alignment.bottomRight,
//                   colors: [
//                     Colors.grey[700],
//                     Colors.grey[800],
//                     Colors.grey[850],
//                     Colors.grey[900],
//                   ],
//                   stops: [
//                     0.1,
//                     0.3,
//                     0.8,
//                     1
//                   ]
//               )
//
//           ),
//         ),
//       ),
//     );
//   }
// }
