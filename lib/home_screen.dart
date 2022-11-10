import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myapp/cell.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(),
      body: Column(children:const [Cell("fifa.jpg","Fifa 22",100),
      Cell("dmc5.jpg","Devil May Cry 5",200),
      Cell("fifa.jpg","Fifa 22",100),
      Cell("fifa.jpg","Fifa 22",100),
      Cell("fifa.jpg","Fifa 22",100)]),
    );
  }
}