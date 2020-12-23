import 'package:flutter/material.dart';
import 'GamePage.dart';
import 'Homepage.dart';

void main() =>
    runApp(
        MaterialApp(
          // initialRoute: '/newGame',
          routes: {
            '/': (context) => HomePage(),
            // '/newGame':(context)=>NewGamePage(),
            '/game': (context) => GamePage()
          },
          debugShowCheckedModeBanner: false,
          theme: ThemeData(primarySwatch: Colors.grey),
        ));
