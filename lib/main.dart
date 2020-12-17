import 'package:flutter/material.dart';
import 'GamePage.dart';
import 'Homepage.dart';

void main() => runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {'/': (context) => HomePage(), '/game': (context) => GamePage()},
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.grey),
    ));
