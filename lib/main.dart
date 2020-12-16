import 'package:flutter/material.dart';
import 'package:new_tic_tac_toe/utils/utils.dart';

void main() => runApp(MaterialApp(
      home: GamePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.grey),
    ));

class GamePage extends StatefulWidget {
  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  bool player;
  int timesPressed;
  List<GameButton> buttonsList;

  List<GameButton> doInit() {
    player = true;
    timesPressed = 0;
    List<GameButton> temp = <GameButton>[
      GameButton(id: 1),
      GameButton(id: 2),
      GameButton(id: 3),
      GameButton(id: 4),
      GameButton(id: 5),
      GameButton(id: 6),
      GameButton(id: 7),
      GameButton(id: 8),
      GameButton(id: 9),
    ];
    return temp;
  }

  @override
  void initState() {
    super.initState();
    buttonsList = doInit();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBackGround,
      body: Column(
        children: [
          SizedBox(height: 30),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: GridView.builder(
                  itemCount: 9,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        _tapped(index);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: buttonsList[index].backGround,
                            border:
                                Border.all(color: buttonsList[index].fontColor),
                            borderRadius: BorderRadius.circular(10)),
                        margin: EdgeInsets.all(3),
                        padding: EdgeInsets.all(5),
                        child: Center(
                          child: Text(
                            buttonsList[index].text,
                            style: TextStyle(
                                fontSize: 50,
                                color: buttonsList[index].fontColor),
                          ),
                        ),
                        // color: Colors.grey[800],
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }

  void _tapped(int index) {
    if (buttonsList[index].text == '') {
      setState(() {
        buttonsList[index].text = player ? 'x' : 'o';
        // buttonsList[index].fontColor = player ? Colors.green : Colors.red;
        player = !player;
        timesPressed += 1;

      });

    }
  }
}
