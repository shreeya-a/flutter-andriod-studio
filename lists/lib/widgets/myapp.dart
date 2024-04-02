import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    var todos = ['1', '2', '3','this is test', 'assss', '69', 'hello'];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome!'),
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                 children: [
                   Container(
                     width: 100,
                     height: 100,
                     margin: EdgeInsets.all(20),
                     decoration: BoxDecoration(
                       shape: BoxShape.circle,
                       color: Colors.purple
                     ),
                   ),
                   Container(
                     width: 100,
                     height: 100,
                     margin: EdgeInsets.all(20),
                     decoration: BoxDecoration(
                         shape: BoxShape.circle,
                         color: Colors.purple
                     ),
                   ),
                   Container(
                     width: 100,
                     height: 100,
                     margin: EdgeInsets.all(20),
                     decoration: BoxDecoration(
                         shape: BoxShape.circle,
                         color: Colors.purple
                     ),
                   ),
                   Container(
                     width: 100,
                     height: 100,
                     margin: EdgeInsets.all(20),
                     decoration: BoxDecoration(
                         shape: BoxShape.circle,
                         color: Colors.purple
                     ),
                   ),
                   Container(
                     width: 100,
                     height: 100,
                     margin: EdgeInsets.all(20),
                     decoration: BoxDecoration(
                         shape: BoxShape.circle,
                         color: Colors.purple
                     ),
                   ),
                 ],
                ),
              ),
             // Container( // this makes a fixed space where items can be scrolled
             //     height: 500,
            Expanded(
                 child:  ListView.builder(
                   // scrollDirection: Axis.horizontal,
                   scrollDirection: Axis.vertical,
               // itemCount: 4,
               itemCount: todos.length,
               itemBuilder: (context, index) {
                 return  Container(
                   height: 200,
                   width: 200,
                   margin: EdgeInsets.all(20),
                   decoration: BoxDecoration(
                       color: Colors.red
                   ),
                   child: Center(
                     child: Text(todos[index], style: TextStyle(
                       color: Colors.white,
                       fontSize: 40,
                     ),),
                   ),
                 );
               },
             )),
            ],
          ),
        ),
        
        // list view
        // body: ListView(
        //   children: [
        //     Container(
        //       height: 200,
        //       margin: EdgeInsets.all(20),
        //       decoration: BoxDecoration(
        //           color: Colors.amber
        //       ),
        //     ),
        //     Container(
        //       height: 200,
        //       margin: EdgeInsets.all(20),
        //       decoration: BoxDecoration(
        //           color: Colors.amber
        //       ),
        //     ),
        //     Container(
        //       height: 200,
        //       margin: EdgeInsets.all(20),
        //       decoration: BoxDecoration(
        //           color: Colors.amber
        //       ),
        //     ),
        //     Container(
        //       height: 200,
        //       margin: EdgeInsets.all(20),
        //       decoration: BoxDecoration(
        //           color: Colors.amber
        //       ),
        //     ),
        //     Container(
        //       height: 200,
        //       margin: EdgeInsets.all(20),
        //       decoration: BoxDecoration(
        //           color: Colors.amber
        //       ),
        //     ),
        //
        //   ],
        // ),

        // scroll view

        // body: SingleChildScrollView(
        //   child: Column(
        //     children: [
        //       Container(
        //         height: 200,
        //         margin: EdgeInsets.all(20),
        //         decoration: BoxDecoration(
        //             color: Colors.amber
        //         ),
        //       ),
        //       Container(
        //         height: 200,
        //         margin: EdgeInsets.all(20),
        //         decoration: BoxDecoration(
        //             color: Colors.amber
        //         ),
        //       ),
        //       Container(
        //         height: 200,
        //         margin: EdgeInsets.all(20),
        //         decoration: BoxDecoration(
        //             color: Colors.amber
        //         ),
        //       ),
        //       Container(
        //         height: 200,
        //         margin: EdgeInsets.all(20),
        //         decoration: BoxDecoration(
        //             color: Colors.amber
        //         ),
        //       ),
        //       Container(
        //         height: 200,
        //         margin: EdgeInsets.all(20),
        //         decoration: BoxDecoration(
        //             color: Colors.amber
        //         ),
        //       ),
        //     ],
        //   ),
        // )
      ),
    );
  }
}