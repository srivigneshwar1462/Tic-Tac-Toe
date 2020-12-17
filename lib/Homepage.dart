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
            child: Center(
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
              flex: 2,
              child: AvatarGlow(
                endRadius: 180,
                child: Container(
                  decoration: BoxDecoration(shape: BoxShape.circle),
                  child: CircleAvatar(
                      radius: 70,
                      backgroundColor: appBackGround,
                      child: Image.asset(
                        'lib/images/img.png',
                        width: 100,
                      )),
                ),
              )),
          Flexible(
            child: FractionallySizedBox(
              heightFactor: 0.35,
              alignment: Alignment.center,
              // padding: EdgeInsets.all(30),
              child: RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/game');
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
          )
        ],
      ),
    );
  }
}
