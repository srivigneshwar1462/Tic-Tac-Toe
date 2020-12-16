import 'package:flutter/material.dart';

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
  bool player=true;
  List<String> data=['','','','','','','','',''];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
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
                            border: Border.all(
                                color: Colors.grey[800].withOpacity(0.8)),
                            borderRadius: BorderRadius.circular(10)),
                        margin: EdgeInsets.all(3),
                        padding: EdgeInsets.all(5),
                        child: Center(
                          child: Text(data[index],style: TextStyle(
                            fontSize: 40,
                            color: Colors.grey
                          ),),
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
    setState(() {
      data[index]=player?'x':'o';
      player=!player;
    });
  }
}
