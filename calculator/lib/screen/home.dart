import 'package:calculator/widgets/calculator_button.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Column(
        children: [
          CalculatorButton(label: '9', color: Colors.red),
          CalculatorButton(label: '8', color: Colors.blue ),
          CalculatorButton(label: '7',),

        ],
      )
    );
  }
}
