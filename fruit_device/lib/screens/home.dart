





import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  getName(){
    return Future.delayed(Duration(seconds: 2), (){
      return Future(() => "Shreeee");
    });
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      //future ma call hune function ko naam passed
       // data aaune function
        future: getName(),
        builder: (context, snapshot){
          if(snapshot.connectionState == ConnectionState.done){
            // after data is here
            return Text('data is here' + '${snapshot.data}');
          }else{
            //while fetching data
            return CircularProgressIndicator();
          }
        });
  }
}
