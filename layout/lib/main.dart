import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Shree!!!',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        color: Colors.amber,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    width: 100,
                    height: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(color: Colors.blue),
                    child: Text("test")),
                Container(
                    width: 100,
                    height: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(color: Colors.blue),
                    child: Text("test")),
                Container(
                    width: 100,
                    height: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(color: Colors.blue),
                    child: Text("test")),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    width: 100,
                    height: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(color: Colors.blue),
                    child: Text("test")),
                Container(
                    width: 100,
                    height: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(color: Colors.blue),
                    child: Text("test")),
                Container(
                    width: 100,
                    height: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(color: Colors.blue),
                    child: Text("test")),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    width: 100,
                    height: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(color: Colors.blue),
                    child: Text("test")),
                Container(
                    width: 100,
                    height: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(color: Colors.blue),
                    child: Text("test")),
                Container(
                    width: 100,
                    height: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(color: Colors.blue),
                    child: Text("test")),
              ],
            ),

          ],
        ),

        // child: Column(
        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   children: [
        //     Container(
        //       //div -> bg color = red
        //       width: 100,
        //       height: 100,
        //       //padding pushes from the inside
        //       //margin pushes from the outside
        //       padding: EdgeInsets.all(14), // padding:14px;
        //       // margin: EdgeInsets.all(24), //margin: 24px;
        //       // advanced styling
        //       decoration: BoxDecoration(
        //         color: Colors.red,
        //       ),
        //       child: Container(
        //         alignment: Alignment.center,
        //               child: Text(
        //         'hello',
        //         style: TextStyle(color: Colors.white),
        //
        //       )),
        //     ),
        //     Container(
        //       //div -> bg color = red
        //       width: 100,
        //       height: 100,
        //       //padding pushes from the inside
        //       //margin pushes from the outside
        //       padding: EdgeInsets.all(14), // padding:14px;
        //       // margin: EdgeInsets.all(24), //margin: 24px;
        //       // advanced styling
        //       decoration: BoxDecoration(
        //         color: Colors.red,
        //       ),
        //       child: Container(
        //           child: Text(
        //             'hello',
        //             style: TextStyle(color: Colors.white),
        //           )),
        //     ),
        //     Container(
        //       //div -> bg color = red
        //       width: 100,
        //       height: 100,
        //       //padding pushes from the inside
        //       //margin pushes from the outside
        //       padding: EdgeInsets.all(14), // padding:14px;
        //       // margin: EdgeInsets.all(24), //margin: 24px;
        //       // advanced styling
        //       decoration: BoxDecoration(
        //         color: Colors.red,
        //       ),
        //       child: Container(
        //           child: Text(
        //             'hello',
        //             style: TextStyle(color: Colors.white),
        //           )),
        //     ),
        //
        //   ],
        // ),
      ),
    ),
  ));
}
