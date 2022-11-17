import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("S'authentifier"),
      ),

      body: ListView(
        children: [
          Image.asset("Assets/minecraft.jpg"),

          Padding(
            padding: const EdgeInsets.fromLTRB(2, 10, 2, 0),
            child:TextField(
            maxLines: 1,
            decoration: InputDecoration(
            hintText: 'Username',
            enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 2,color: Colors.black26))
             ),
            )
            ),


            Padding(
            padding: const EdgeInsets.fromLTRB(2, 10, 2, 0),
            child:TextField(
            maxLines: 1,
            decoration: InputDecoration(
            hintText: 'Mot de passe',
            enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 2,color: Colors.black26))
             ),
            )
            ),


            Padding(
              padding: const EdgeInsets.fromLTRB(2, 20, 2, 0),
              child:ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                            child: Text("S'authentifier"),
                          ),
            ),


            Padding(
              padding: const EdgeInsets.fromLTRB(2, 10, 2, 0),
              child:ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 246, 40, 22)),
                            child: Text("Créé un compte"),
                          ),
            ),
            
            Padding(
              padding: const EdgeInsets.fromLTRB(2, 20, 2, 0),
              child:Align(alignment: Alignment.bottomCenter,
              child:Row (
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text("mot de passe oublié"),
                 Text("Cliquez ici",style: TextStyle(color:Colors.blue),)

              ],)))
        ],
      ),
    );
  }
}