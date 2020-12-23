import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_tic_tac_toe/utils/utils.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBackGround,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            // flex: 1,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                "Tic Tac Toe",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
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
              flex: 3,
              child: AvatarGlow(
                duration: Duration(seconds: 3),
                endRadius: 180,
                child: Container(
                  decoration: BoxDecoration(shape: BoxShape.circle),
                  child: CircleAvatar(
                      radius: 70,
                      backgroundColor: Colors.grey[800],
                      child: Image.asset(
                        'lib/images/img.png',
                        width: 100,
                      )),
                ),
              )),
          Flexible(
            flex: 2,
            child: FractionallySizedBox(
              heightFactor: 0.3,
              alignment: Alignment.center,
              // padding: EdgeInsets.all(30),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/game');
                  },
                  color: Colors.grey[800],
                  child: Text(
                    "Start Game",
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
          )
        ],
      ),
    );
  }
}
