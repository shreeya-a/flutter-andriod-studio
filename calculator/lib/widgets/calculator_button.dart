import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {

  final String label;
  final Color? color;
  final Function callback;
  // final VoidCallback callback;


  const CalculatorButton({required this.label, this.color, required this.callback});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){
        print('btn pressed');
        callback(label);
      },
      child: Text(this.label),
      style: ButtonStyle(
        //btn has many states
        //thus materialStateProperty is used
        backgroundColor: MaterialStateProperty.all(this.color ?? Colors.white),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)))
      ),
    );
  }
}
