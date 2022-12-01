import 'package:flutter/material.dart';
import 'package:myapp/Signup.dart';
import 'package:myapp/home_screen.dart';
import 'package:myapp/mdp.dart';

class Signin extends StatefulWidget {
     static const String routeName = "/";

  const Signin({Key? key}) : super(key: key);
   
    @override
  State<Signin> createState() => _Signin();
}
class _Signin extends State<Signin> {
  //var
  GlobalKey<FormState> formKey = GlobalKey();

  late String username;


  late String password;


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("S'authentifier"),
      ),
     body: Form(
        key: formKey,
        
      child:  ListView(
        children: [
          Container(
              width: double.infinity,
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: Image.asset("assets/dmc5.jpg", width: 460, height: 215)
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(10, 50, 10, 10),
            child: TextFormField(
                onSaved: (newValue) {
                  username = newValue!;
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return "username cannot be empty";
                  }
                },
             decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: "Username"),
              ),
            ),
          Container(
            margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
            child:TextFormField(
                onSaved: (newValue) {
                  password = newValue!;
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return "password cannot be empty";
                  }
                },
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: "Mot de passe"),
              ),
            ),
          Container(
            margin: const EdgeInsets.fromLTRB(10, 20, 10, 0),
            child: ElevatedButton(
              child: InkWell(
 onTap: (){
         Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => HomeScreen(),
            ));
      },
                  

                child: const Text("S'authentifier")),
              onPressed: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text("Information"),
                            content: Text(
                                " Username = $username \n Password = $password "),
                          );
                        },
                      );
                    }
                  },
                ),
          ),
          Container(
              margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                ),
                child: InkWell(
                   onTap: (){
          Navigator.pushNamed(context, inscription.routeName);
      },
                  child: const Text("Créer un compte")),
                onPressed: () {},
              )
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                Text("Mot de passe oublié ?"),
                SizedBox(
                  width: 10,
                ),
                InkWell(
                   onTap: (){
          Navigator.pushNamed(context, mdp.routeName);
      },
                  
                  
                  child: Text("Cliquez ici", style: TextStyle(color: Colors.blue)))
              ],
            ),
          )
        ],
      ),
    ));
  }
}
