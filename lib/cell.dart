import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
 


class Cell extends StatelessWidget {
  final String image;
  final String title;
  final double price;
  const Cell(this.image,this.title,this.price);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            //game image
            Image.asset('assets/$image', width: 200,),
            Padding(
              padding: const EdgeInsets.fromLTRB(35, 0, 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('$title', style: TextStyle(fontSize: 15),),
                  SizedBox(height: 10,),
                  Text('$price TND', textScaleFactor: 2, style: TextStyle(fontWeight: FontWeight.bold),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
