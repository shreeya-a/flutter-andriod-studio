import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  List buttons =  ['9', '8','7', '/',
    '6','5', '4','-',
    '3','2', '1','x',
    '0','.', '=','+',];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 200,
              alignment: Alignment.bottomRight,
              // color: Colors.red,
              child: Text('8000', style: TextStyle(
                fontSize: 70,
                fontWeight: FontWeight.bold
              ),),
            ),
            Expanded(
              child: GridView.builder(
                  itemCount: buttons.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
                      itemBuilder: (context, index) {
                        return Container(
                          color: Colors.blue,
                          margin: EdgeInsets.all(10),
                          child: Center(
                            child: Text(buttons[index], style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30,

                            ),),
                          ),
                        );
                      }
              
              )
            )
          ],
        ),
      ),
    );
  }
}


