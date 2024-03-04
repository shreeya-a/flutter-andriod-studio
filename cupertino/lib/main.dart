import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text(
          'Nav',
          style: TextStyle(
              color: Colors.red, fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      // body: Column(
      //   children: [
      //     Text('data'),
      //     Text('test'),
      //     Text('test'),
      //   ],
      // ),
      // body: Row(
      //   children: [
      //     Text('data'),
      //     Text('test'),
      //     Text('test'),
      //   ],
      // ),
      // body: Container(
      //   color: Colors.red,
      //     padding: EdgeInsets.all(10),
      //     child: Text(
      //       'Body',
      //       style: TextStyle(
      //           color: Colors.blue, fontSize: 24, fontWeight: FontWeight.bold),
      //     ),
      // ),
      // body: Center(
      //   child: Text(
      //     'Body',
      //     style: TextStyle(
      //         color: Colors.blue, fontSize: 24, fontWeight: FontWeight.bold),
      //   ),),

    ),
  ));
}