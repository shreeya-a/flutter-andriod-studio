import 'package:flutter/material.dart';

void main() {
// widget for flutter == tag for html

  //built-in function needed to run app
  runApp(MaterialApp(
    // home: Text('Heyy'),
    home: Scaffold(
      appBar: AppBar(
        title: Text('Heyy'),
        backgroundColor: Colors.red,
      ),
      body: Text('Hey heyy heyyy'),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
      ),
    ),
  ));
}


