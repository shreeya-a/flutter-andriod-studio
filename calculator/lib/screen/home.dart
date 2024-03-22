import 'package:flutter/material.dart';
import '../widgets/calculator_button.dart';
import 'package:eval_ex/expression.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List buttons = [
    '9',
    '8',
    '7',
    '/',
    '6',
    '5',
    '4',
    '-',
    '3',
    '2',
    '1',
    '*',
    'C',
    '0',
    '=',
    '+',
  ];
 String math_exp = '';
  // o/p= btn clicked shown on display
  String output = "";

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
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 300,
              alignment: Alignment.bottomRight,
              child: Text(
                // o/p= btn clicked shown on display
                output,
                style: TextStyle(fontSize: 70, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: GridView.builder(
                  itemCount: buttons.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
                  itemBuilder: (context, i) {
                    return CalculatorButton(
                        color: Colors.purple,
                        label: buttons[i],
                        callback: (label) {
                          //calculate btn
                          if (label == '=') {

                            Expression exp = Expression(math_exp);

                            setState(() {
                              output = exp.eval().toString();
                              print('math exp = ' + math_exp);
                            });
                          }
                          // operation button
                          else if (label == '+' ||
                              label == '-' ||
                              label == '*' ||
                              label == '/') {

                            // print('Operation btn is clicked ' + label);
                            setState(() {
                              math_exp = math_exp + label;
                              output = '';


                            });
                          }
                          else if (label == 'C'){
                            setState(() {
                              math_exp = '';
                              output = '';
                            });
                          }
                          // Number btn
                          else {
                            // print('Number btn is pressed');
                            setState(() {
                              output = output + label;
                              math_exp = math_exp + label;


                            });
                          }
                          // print('math exp ' + math_exp);
                          // print("button pressed " + label);

                        });
                  }),
            )
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
//
// class Home extends StatefulWidget {
//   const Home({super.key});
//
//   @override
//   State<Home> createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//
//   List buttons =  ['9', '8','7', '/',
//     '6','5', '4','-',
//     '3','2', '1','x',
//     '0','.', '=','+',];
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Calculator'),
//       ),
//       body: Container(
//         padding: EdgeInsets.all(10),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Container(
//               height: 200,
//               alignment: Alignment.bottomRight,
//               // color: Colors.red,
//               child: Text('8000', style: TextStyle(
//                 fontSize: 70,
//                 fontWeight: FontWeight.bold
//               ),),
//             ),
//             Expanded(
//               child: GridView.builder(
//                   itemCount: buttons.length,
//                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                       crossAxisCount: 4),
//                       itemBuilder: (context, index) {
//                         return Container(
//                           color: Colors.blue,
//                           margin: EdgeInsets.all(10),
//                           child: Center(
//                             child: Text(buttons[index], style: TextStyle(
//                               color: Colors.white,
//                               fontWeight: FontWeight.bold,
//                               fontSize: 30,
//
//                             ),),
//                           ),
//                         );
//                       }
//
//               )
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
//
//
