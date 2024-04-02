import 'package:flutter/material.dart';
import 'package:task2/screens/home.dart';

void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('List'),
      ),
      body: Home(),
    ),
  ));
}