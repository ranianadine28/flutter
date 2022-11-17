import 'dart:io';

import 'package:flutter/material.dart';
import 'package:myapp/Signup.dart';
import 'package:myapp/Signin.dart';
import 'package:myapp/biblio.dart';

import 'package:myapp/gameDetail.dart';
import 'package:myapp/home_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home: const  Biblio());
  }
}