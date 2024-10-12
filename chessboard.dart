import 'package:flutter/material.dart';

void main() {
  runApp(ChessBoardApp());
}

class ChessBoardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chess Board',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ChessBoard(),
    );
  }
}

class ChessBoard extends StatelessWidget {
  final int boardSize = 8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chess Board'),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: boardSize,
            ),
            itemBuilder: (context, index) {
              int row = index ~/ boardSize;
              int col = index % boardSize;

              bool isWhite = (row + col) % 2 == 0;

              return Container(
                margin: EdgeInsets.all(1),
                decoration: BoxDecoration(
                  color: isWhite ? Colors.white : Colors.black,
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