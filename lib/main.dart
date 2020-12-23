import 'package:flutter/material.dart';
import 'package:new_tic_tac_toe/AutoGamePage.dart';
import 'GamePage.dart';
import 'Homepage.dart';

void main() =>
    runApp(
        MaterialApp(

          // initialRoute: '/newGame',
          routes: {
            '/': (context) => HomePage(),
            '/autoGame':(context)=>AutoGamePage(),
            '/game': (context) => GamePage()
          },
          debugShowCheckedModeBanner: false,
          theme: ThemeData(primarySwatch: Colors.grey),
        ));
