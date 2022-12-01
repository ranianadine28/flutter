import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/arguments/game.argument.dart';
import 'package:myapp/game.dart';

class DetailsScreen extends StatefulWidget {
  //var
  static const String routeName = "/Details";
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final GameArgument args =
        ModalRoute.of(context)?.settings.arguments as GameArgument;
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            //1
            Image.asset("Assets/${args.game.image}"),
            const SizedBox(
              height: 20,
            ),
            //2
            const Text(
              "Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n'a pas fait que survivre cinq siècles, mais s'est aussi adapté à la bureautique informatique, sans que son contenu n'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.",
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 50,
            ),
            //3
            Center(
              child: Text(
                "${args.game.price.floor().toString()} TND",
                style:
                    const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
                child: Text(
                    "Exemplaires disponible : ${args.game.quantity.toString()}")),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    if (args.game.quantity > 0) {
                      args.game.quantity--;
                    }
                  });
                },
                icon: const Icon(CupertinoIcons.shopping_cart),
                label: const Text("Acheter"))
          ],
        ),
      ),
    );
  }
}
