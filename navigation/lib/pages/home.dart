import 'package:flutter/material.dart';
import 'package:navigation/pages/about.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            // Navigator.push(context, MaterialPageRoute(builder: (context) => About()));
              Navigator.pushNamed(context, '/about');
          },
          child: Text('Go to About page'),
        )
      ),
    );
  }
}
