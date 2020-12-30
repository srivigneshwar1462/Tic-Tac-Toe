//this is the main file and it contains the routes and themes

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:new_tic_tac_toe/AutoGamePage.dart';
import 'GamePage.dart';
import 'Homepage.dart';

//
// void main() {
//   SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
//       .then((_) {
//     runApp(MaterialApp(
//       // initialRoute: '/dummy',
//       routes: {
//         '/': (context) => HomePage(),
//         '/autoGame': (context) => AutoGamePage(),
//         '/game': (context) => GamePage(),
//         // '/dummy': (context) => MyHome()
//       },
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(primarySwatch: Colors.grey),
//     ));
//   });
// }

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      // initialRoute: '/dummy',
      routes: {
        '/': (context) => HomePage(),
        '/autoGame': (context) => AutoGamePage(),
        '/game': (context) => GamePage(),
        // '/dummy': (context) => MyHome()
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.grey),
    );
  }
}

