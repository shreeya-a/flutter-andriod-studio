import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          'Kitab Kalam',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          //banner
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                height: 70,
                width: 330,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
                child: Text(
                  'Welcome, Shreeya',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
          //icon
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            //book
            Container(
              margin: EdgeInsets.all(10),
              width: 150,
              height: 90,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.purple,
                // border: Border.all(width: 1, color: Colors.blue)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.my_library_books_outlined,
                    color: Colors.white,
                  ),
                  Text(
                    'Book:450',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
            // profile
            Container(
              margin: EdgeInsets.all(10),
              width: 150,
              height: 90,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(width: 1, color: Colors.black)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.account_circle,
                    color: Colors.white,
                  ),
                  Text(
                    'View Profile',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            )
          ]),
          //title
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Books',
                style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
              )
            ],
          ),
          // sections
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 330,
                  height: 50,
                  color: Colors.yellow,
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.book),
                      ),
                      Text('Code History')
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 330,
                  height: 50,
                  color: Colors.yellow,
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.book),
                      ),
                      Text('PHP Book')
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 330,
                  height: 50,
                  color: Colors.yellow,
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.book),
                      ),
                      Text('Flutter Book')
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 330,
                  height: 50,
                  color: Colors.yellow,
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.book),
                      ),
                      Text('How to eat properly')
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.purple,
        // used to add an icon
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 30,
        ),
      ),
    ),
  ));
}
