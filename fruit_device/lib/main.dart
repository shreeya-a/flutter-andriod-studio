import 'package:flutter/material.dart';
import 'package:fruit_device/screens/home.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text('FruityVice'),
      ),
      body: Home(),
    ),
  ),);
}