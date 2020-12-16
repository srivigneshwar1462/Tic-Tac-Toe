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

const appBackGround=Color(0xFF212121);
