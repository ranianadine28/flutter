import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inscription"),
      ),

      body: Card(
        child: Padding(
                padding: const EdgeInsets.all(10),
                child:Column(
                  children:[
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
                            hintText: 'Email',
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
                      padding: const EdgeInsets.fromLTRB(2, 10, 2, 0),
                      child:TextField(
                          maxLines: 1,
                          decoration: InputDecoration(
                            hintText: 'Année de naissance',
                            enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 2,color: Colors.black26))
                          ),
                        )
                      ),


                      Padding(
                      padding: const EdgeInsets.fromLTRB(2, 10, 2, 0),
                      child:TextField(
                          maxLines: 1,
                          decoration: InputDecoration(
                            hintText: 'Adresse de facturation',
                            enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 2,color: Colors.black26))
                          ),
                        )
                      ),



                      Padding(
                      padding: const EdgeInsets.fromLTRB(2, 10, 2, 0),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0,0,8,0),
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                                child: Text("S'inscrire"),
                              ),),
                          


                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                            child: Text("Annuler"),
                          ),
                        ],
                      )
                      ),
                    
                  ]
                )
              ),
      )
    );
  }
}