import 'package:flutter/material.dart';
import 'package:myapp/cell.dart';
import 'package:myapp/celll.dart';
import 'package:myapp/game.dart';

class panier extends StatefulWidget {
  const panier({super.key});

  @override
  State<panier> createState() => _panierState();
}

class _panierState extends State<panier> {
  //var
 

  //actions

  //life cycle
  @override
  void initState() {
    super.initState();
  }

  //build
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Panier"),
      ),
      body:   Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Total : 500 TND', style: TextStyle(fontSize: 20),)
                ],
              ),
            ),
            Divider(
              color: Colors.red,
            ),
            Column(
              children: [
                celll("assets/dmc5.jpg", 200),
                celll("assets/dmc5.jpg", 200),
                celll("assets/fifa.jpg", 100),
              ],
            )
          ],
        ),
      ),
    );
  }
}

