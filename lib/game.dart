import 'package:flutter/material.dart';

class Game {
  //att
  late String image;
  late String title;
  late int price;

  //constuctor
 Game.Two(this.image, this.title);
 Game.three(this.image, this.price);
  Game(this.image, this.title, this.price);
}
