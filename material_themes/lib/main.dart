// without using both we can use non-material
//everything is manual
//we can use container in runApp

import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    // scaffold for structures
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text('App'),
      ),

    ),
  ));
}

// import 'package:flutter/cupertino.dart';
// // for ios
// void main(){
//   runApp(CupertinoApp(
//     home: CupertinoPageScaffold(
//       navigationBar: CupertinoNavigationBar(
//         middle: Text('Cupertino'),
//       ),
//       child: Center(
//         child: Text('Hey man'),
//       ),
//     ),
//   ));
// }

