// import 'package:flutter/material.dart';
// import 'package:new_tic_tac_toe/utils/utils.dart';
//
// class Game {
//   bool player;
//   List<GameButton> buttonsList;
//   int timesPressed, playerX, playerO;
//
//   List<GameButton> doInit() {
//     this.player = true;
//     this.timesPressed = 0;
//      return this.buttonsList = [
//       GameButton(id: 0),
//       GameButton(id: 1),
//       GameButton(id: 2),
//       GameButton(id: 3),
//       GameButton(id: 4),
//       GameButton(id: 5),
//       GameButton(id: 6),
//       GameButton(id: 7),
//       GameButton(id: 8),
//     ];
//   }
//
//   void initializePlayers() {
//     this.playerX = 0;
//     this.playerO = 0;
//   }
//
//   List<GameButton> getButtons() => buttonsList;
//
//   void onTap(int index, BuildContext context) {
//     if (this.buttonsList[index].text == "") {
//       this.buttonsList[index].text = (this.player) ? 'X' : 'O';
//       this.timesPressed += 1;
//       this.player = !player;
//       checkWinner(context);
//     }
//   }
//
//   void checkWinner(BuildContext context) {
//     bool hasWinner = checkWinnerMain();
//     if (hasWinner == false && this.timesPressed == 9) {
//       showDialog(
//           context: context,
//           builder: (context) =>
//               CustomDialog("Game Tied", "Press the button to restart",resetGame));
//     }
//   }
//
//   void resetGame() {}
//
//   bool checkWinnerMain() {
//     return false;
//   }
// }
