import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {

  final String label;
  final Color? color;


  const CalculatorButton({required this.label,  this.color});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){},
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
