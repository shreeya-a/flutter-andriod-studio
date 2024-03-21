import 'package:calculator/widgets/calculator_button.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});


  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List btnLabels = ['1', '2', '3', '4', '5', '6'];
  void onButtonPress(data){
    print(data);
    // print('btn pressed from parents');
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Container(
      child: Container(
        child: CalculatorButton(
          label: '2',
          color: Colors.yellow,
          callback: onButtonPress,
        ),
      ),

        // child: GridView.builder(
        //   itemCount: btnLabels.length,
        //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
        //     itemBuilder: (context, index) {
        //       return Container(
        //         color: Colors.red,
        //         margin: EdgeInsets.all(10),
        //         child: Center(
        //           child: Text(
        //             btnLabels[index],
        //             style: TextStyle(
        //             color: Colors.white,
        //             fontWeight: FontWeight.bold,
        //             fontSize: 30,
        //           ),),
        //         ),
        //       );
        //     }),

      ),


    );
  }
}
