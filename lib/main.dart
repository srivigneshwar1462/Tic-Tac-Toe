//this is the main file and it contains the routes and themes

import 'package:flutter/material.dart';
import 'package:new_tic_tac_toe/AutoGamePage.dart';
import 'GamePage.dart';
import 'Homepage.dart';

void main() => runApp(MaterialApp(
      // initialRoute: '/dummy',
      routes: {
        '/': (context) => HomePage(),
        '/autoGame': (context) => AutoGamePage(),
        '/game': (context) => GamePage(),
        // '/dummy': (context) => MyHome()
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.grey),
    ));
