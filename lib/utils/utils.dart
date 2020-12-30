// this page contains some utility classes and data that are used throughout this project

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GameButton {
  final int id;
  String text;

  Color fontColor, backGround;

  GameButton(
      {this.id,
      this.text = '',
      this.fontColor = Colors.white,
      this.backGround = const Color(0xFF212121)});
}

const appBackGround = Color(0xFF212121);

TextStyle customFontStyle = TextStyle(
  fontSize: 15,
  color: Colors.white,
  letterSpacing: 1.2,
);

class CustomDialog extends StatelessWidget {
  final String title, content, actionText;
  final VoidCallback callback;

  CustomDialog(this.title, this.content, this.callback,
      [this.actionText = "Reset"]);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: AlertDialog(
        backgroundColor: appBackGround,
        title: Text(
          this.title,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            letterSpacing: 1.2,
          ),
        ),
        content: Text(
          this.content,
          style: customFontStyle,
        ),
        actions: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                child: SizedBox(
                  width: double.maxFinite,
                  child: FlatButton(
                    onPressed: callback,
                    color: Color(0xff525252),
                    child: Text(
                      actionText,
                      style: customFontStyle,
                    ),
                    padding: EdgeInsets.all(10),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
