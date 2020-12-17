import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GameButton {
  final int id;
  String text;

  Color fontColor, backGround;

  GameButton(
      {this.id,
      this.text = '',
      this.fontColor = Colors.grey,
      this.backGround = const Color(0xFF212121)});
}

const appBackGround = Color(0xFF212121);

TextStyle dialogStyle = TextStyle(
  fontSize: 20,
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
    return AlertDialog(
      backgroundColor: appBackGround,
      title: Text(
        this.title,
        style: dialogStyle,
      ),
      content: Text(
        this.content,
        style: dialogStyle,
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
                    style: dialogStyle,
                  ),
                  padding: EdgeInsets.all(10),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
