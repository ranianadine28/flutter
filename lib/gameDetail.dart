import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class GameDetail extends StatelessWidget {
  const GameDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Devil May Cry 5"),
      ),
      body: Card(
        child: Padding(
          padding: const EdgeInsets.all(08),
          child: Column(
            children: [
              Image.asset(
                "assets/dmc5.jpg",
                width: 800,
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                    ),
                    Text(
                      "200TND",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                    ),
                    Center(

                      child: FloatingActionButton.extended(
                        onPressed: () {
                          // Add your onPressed code here!
                        },
                        label: const Text('Acheter'),
                        icon: const Icon(Icons.shopping_cart_checkout_sharp),
                        backgroundColor: Colors.blue,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}