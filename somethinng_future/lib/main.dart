import 'package:flutter/material.dart';

//if delay is used then that element is ignored for the time being
// this is called asynchronous programming

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  one(){
    print('one');
  }

  // two(){
  //   Future.delayed(Duration(seconds: 3), (){
  //     print('two');
  //   });
  // }

  two() async {
    await Future.delayed(Duration(seconds: 2), () {
      print('Calculate the sum of two number');
    });
  }


  three(){
    print('three');
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Future'),
        ),
        body: Center(
          child: ElevatedButton(
            child: Text('Click me!'),
            onPressed: () async{
              one();
             await two();
              three();
            },

          ),
        ),
      ),


    );
  }
}

