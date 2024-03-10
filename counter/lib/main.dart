import 'package:flutter/material.dart';

void main() => runApp(Counter());

//static and does not re-render quick
// class MyApp extends StatefulWidget {
//   const MyApp({super.key});
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Counter App'),
//         ),
//       ),
//     );
//   }
// }

//dynamic and can re-render
class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter = 10;
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
    home: Scaffold(
        appBar: AppBar(
          title: Text('Hello world', style: TextStyle(
              color: Colors.white
          ),),
          backgroundColor: Colors.purple,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                      '$counter',
                          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: (){
                    setState(() {
                      counter += 1;
                    });
                  },
                  child: Text('increse++'),
                ),
                ElevatedButton(
                  onPressed: (){
                    setState(() {
                      counter -= 1;
                    });
                  },
                  child: Text('decrease++'),
                ),
              ],
            ),
          ],
        ),

    ),
    );
  }
}
