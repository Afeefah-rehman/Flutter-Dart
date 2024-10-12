import 'package:flutter/material.dart';

void main() {
  runApp(LudoBoardApp());
}

class LudoBoardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ludo Board',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LudoBoard(),
    );
  }
}

class LudoBoard extends StatelessWidget {
  final int boardSize = 15;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ludo Board'),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          color: Colors.white,
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: boardSize,
            ),
            itemBuilder: (context, index) {
              int row = index ~/ boardSize;
              int col = index % boardSize;

              // Define the Ludo board cells with colors for home areas
              Color color;
              if (row < 6 && col < 6) {
                color = Colors.red;
              } else if (row < 6 && col >= 9) {
                color = Colors.green;
              } else if (row >= 9 && col < 6) {
                color = Colors.yellow;
              } else if (row >= 9 && col >= 9) {
                color = Colors.blue;
              } else {
                color = Colors.white;
              }

              return Container(
                margin: EdgeInsets.all(1),
                decoration: BoxDecoration(
                  color: color,
                  border: Border.all(color: Colors.black),
                ),
              );
            },
            itemCount: boardSize * boardSize,
          ),
        ),
      ),
    );
  }
}