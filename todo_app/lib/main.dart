
import 'package:flutter/material.dart';
import 'package:todo_app/pages/home.dart';

void main() {
  runApp(MaterialApp(
initialRoute: '/',
    routes: {
    '/' : (context) => Home(),
    },
  )
  );
}


