import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Shreeya Adhikari',
        style : TextStyle(color: Colors.white, fontSize: 30)
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Text(('Hello nice to see you. Hope you had a nice day.'),
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black87, fontSize: 30, ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.green,
        // used to add an icon
        child: const Icon(Icons.add, color: Colors.white, size: 50,),
      ),
    ),
  ));
}




