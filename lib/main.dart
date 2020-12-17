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
  int timesPressed, playerX, playerO;
  List<GameButton> buttonsList;

  List<GameButton> doInit() {
    player = true;
    timesPressed = 0;
    List<GameButton> temp = <GameButton>[
      GameButton(id: 0),
      GameButton(id: 1),
      GameButton(id: 2),
      GameButton(id: 3),
      GameButton(id: 4),
      GameButton(id: 5),
      GameButton(id: 6),
      GameButton(id: 7),
      GameButton(id: 8),
    ];
    return temp;
  }

  @override
  void initState() {
    super.initState();
    playerO = 0;
    playerX = 0;
    buttonsList = doInit();
  }

  var scoreBoardStyle = TextStyle(
      color: Colors.grey,
      fontSize: 30,
      fontWeight: FontWeight.bold,
      letterSpacing: 1.2);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBackGround,
      body: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
                flex: 2,
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Player X",
                            style: scoreBoardStyle,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            playerX.toString(),
                            style: scoreBoardStyle,
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Player O",
                            style: scoreBoardStyle,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            playerO.toString(),
                            style: scoreBoardStyle,
                          )
                        ],
                      )
                    ],
                  ),
                )),
            Expanded(
              flex: 6,
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
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
                              border: Border.all(
                                  color: buttonsList[index].fontColor),
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
            Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                height: 80,
                padding: EdgeInsets.all(15),
                child: RaisedButton(
                    onPressed: resetGame,
                    child: Center(
                      child: Text(
                        "Reset",
                        style: TextStyle(
                          fontSize: 20,
                          color: appBackGround,
                          letterSpacing: 1.2,
                        ),
                      ),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _tapped(int index) {
    if (buttonsList[index].text == '') {
      setState(() {
        buttonsList[index].text = player ? 'X' : 'O';
        // buttonsList[index].fontColor = player ? Colors.green : Colors.red;
        player = !player;
        timesPressed += 1;
        checkWinnerMain();
      });
    }
  }

  void resetGame() {
    if (Navigator.canPop(context)) Navigator.pop(context);
    setState(() {
      buttonsList = doInit();
    });
  }

  void checkWinnerMain() {
    bool hasWinner = checkWinner();

    if (hasWinner == false && timesPressed == 9) {
      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) => CustomDialog(
              "Game Tied", "Press The Button To Restart", resetGame));
    }
  }

  bool checkWinner() {
    bool winner = false;
    //  row 1
    if (buttonsList[0].text == buttonsList[1].text &&
        buttonsList[0].text == buttonsList[2].text &&
        buttonsList[0].text != '') {
      buttonsList[0].fontColor = Colors.green;
      buttonsList[1].fontColor = Colors.green;
      buttonsList[2].fontColor = Colors.green;
      winner = true;
      showDialog(
          barrierDismissible: false,
          context: context,
          builder: (context) => CustomDialog("Winner is ${buttonsList[0].text}",
              "Press The Button To Restart", resetGame));
      return winner;
    }
    // Row 2
    if (buttonsList[3].text == buttonsList[4].text &&
        buttonsList[3].text == buttonsList[5].text &&
        buttonsList[3].text != '') {
      buttonsList[3].fontColor = Colors.green;
      buttonsList[4].fontColor = Colors.green;
      buttonsList[5].fontColor = Colors.green;
      winner = true;
      showDialog(
          barrierDismissible: false,
          context: context,
          builder: (context) => CustomDialog("Winner is ${buttonsList[3].text}",
              "Press The Button To Restart", resetGame));
      return winner;
    }
    // Row 3
    if (buttonsList[6].text == buttonsList[7].text &&
        buttonsList[6].text == buttonsList[8].text &&
        buttonsList[6].text != '') {
      buttonsList[6].fontColor = Colors.green;
      buttonsList[7].fontColor = Colors.green;
      buttonsList[8].fontColor = Colors.green;
      winner = true;
      showDialog(
          barrierDismissible: false,
          context: context,
          builder: (context) => CustomDialog("Winner is ${buttonsList[6].text}",
              "Press The Button To Restart", resetGame));
      return winner;
    }

    // Column 1
    if (buttonsList[0].text == buttonsList[3].text &&
        buttonsList[0].text == buttonsList[6].text &&
        buttonsList[0].text != '') {
      buttonsList[0].fontColor = Colors.green;
      buttonsList[3].fontColor = Colors.green;
      buttonsList[6].fontColor = Colors.green;
      winner = true;
      showDialog(
          barrierDismissible: false,
          context: context,
          builder: (context) => CustomDialog("Winner is ${buttonsList[0].text}",
              "Press The Button To Restart", resetGame));
      return winner;
    }

    // Column 2
    if (buttonsList[1].text == buttonsList[4].text &&
        buttonsList[1].text == buttonsList[7].text &&
        buttonsList[1].text != '') {
      buttonsList[1].fontColor = Colors.green;
      buttonsList[4].fontColor = Colors.green;
      buttonsList[7].fontColor = Colors.green;
      winner = true;
      showDialog(
          barrierDismissible: false,
          context: context,
          builder: (context) => CustomDialog("Winner is ${buttonsList[1].text}",
              "Press The Button To Restart", resetGame));
      return winner;
    }

    // Column 2
    if (buttonsList[2].text == buttonsList[5].text &&
        buttonsList[2].text == buttonsList[8].text &&
        buttonsList[2].text != '') {
      buttonsList[2].fontColor = Colors.green;
      buttonsList[5].fontColor = Colors.green;
      buttonsList[8].fontColor = Colors.green;
      winner = true;
      showDialog(
          barrierDismissible: false,
          context: context,
          builder: (context) => CustomDialog("Winner is ${buttonsList[2].text}",
              "Press The Button To Restart", resetGame));
      return winner;
    }

    // Diagonal 1
    if (buttonsList[0].text == buttonsList[4].text &&
        buttonsList[0].text == buttonsList[8].text &&
        buttonsList[0].text != '') {
      buttonsList[0].fontColor = Colors.green;
      buttonsList[4].fontColor = Colors.green;
      buttonsList[8].fontColor = Colors.green;
      winner = true;
      showDialog(
          barrierDismissible: false,
          context: context,
          builder: (context) => CustomDialog("Winner is ${buttonsList[0].text}",
              "Press The Button To Restart", resetGame));
      return winner;
    }

    // Diagonal 2
    if (buttonsList[2].text == buttonsList[4].text &&
        buttonsList[2].text == buttonsList[6].text &&
        buttonsList[2].text != '') {
      buttonsList[2].fontColor = Colors.green;
      buttonsList[4].fontColor = Colors.green;
      buttonsList[6].fontColor = Colors.green;
      winner = true;
      showDialog(
          barrierDismissible: false,
          context: context,
          builder: (context) => CustomDialog("Winner is ${buttonsList[2].text}",
              "Press The Button To Restart", resetGame));
      return winner;
    }

    return winner;
  }
}
