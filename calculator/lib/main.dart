
import 'package:calculator/screen/home.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.purple,
        titleTextStyle: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,

        ),
      ),
      // scaffoldBackgroundColor: Colors.amber,
    ),
    initialRoute: '/',
    routes: {
      '/' : (context) => Home(),
    },
  ));
}