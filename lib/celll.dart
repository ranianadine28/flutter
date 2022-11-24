import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class celll extends StatelessWidget {

  final int price;
  final String image;

  const celll(this.image, this.price);

  //const CartItem({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.restore_from_trash_rounded, size: 50,),
              Image.asset(image, height: 50,),
              Text(price.toString() + ' TND', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)
            ],
          ),
        ),
      ),
    );
  }
}