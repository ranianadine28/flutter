import 'package:flutter/material.dart';
import 'package:myapp/cell.dart';
import 'package:myapp/game.dart';
import 'package:myapp/gridCell.dart';

class Biblio extends StatefulWidget {
  const Biblio({super.key});

  @override
  State<Biblio> createState() => _BiblioState();
}

class _BiblioState extends State<Biblio> {
  //var
  final List<Game> games = [
    Game.Two("dmc5.jpg", "Devil May Cry 5",2),
    Game.Two("fifa.jpg", "Fifa 22",3),
    Game.Two("minecraft.jpg", "Minecraft",7),
    Game.Two("nfs.jpg", "Need For Speed",9),
    Game.Two("rdr2.jpg", "Red Dead 2",9),
    Game.Two("re8.jpg", "Resident Evil 8",0)
  ];

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
        title: const Text("Ma bibliothèque"),
      ),
      body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            itemCount: games.length,
            itemBuilder: (BuildContext ctx, index) {
              return Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: gridCell(games[index]),
              );
            }),
    );
  }
}

