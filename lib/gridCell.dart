import 'package:flutter/material.dart';
import 'package:myapp/game.dart';

class gridCell extends StatelessWidget {
  //var
  final Game mGame;

  const gridCell(this.mGame, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              "Assets/${mGame.image}",
              width: 240,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    mGame.title,
                    style: const TextStyle(color: Colors.black),
                  ),
                  
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}