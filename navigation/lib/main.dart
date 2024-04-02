import 'package:flutter/material.dart';
import 'package:navigation/pages/about.dart';
import 'package:navigation/pages/home.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
   routes: {
     '/' :(context) => Home(),
     '/about' :(context) => About(),
   },
  ));
}

