import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  getName(){
    return Future.delayed(Duration(seconds: 5), (){
      return Future(() => "Shreeya");
    });
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(future: getName(), builder: (context, snapshot){
      if(snapshot.connectionState == ConnectionState.done){
        return Text('${snapshot.data}');
      }
      else{
        return Center(child: CircularProgressIndicator());
      }
    });
  }
}





// import 'package:flutter/material.dart';
//
// class Home extends StatelessWidget {
//   const Home({super.key});
//
//   getName(){
//     return Future.delayed(Duration(seconds: 2), (){
//       return Future(() => "Shreeee");
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//       //future ma call hune function ko naam passed
//        // data aaune function
//         future: getName(),
          //snapshot checks if data is here or not and many other functions
//         builder: (context, snapshot){
//           if(snapshot.connectionState == ConnectionState.done){
//             // after data is here
//             return Text('data is here' + '${snapshot.data}');
//           }else{
//             //while fetching data
//             return CircularProgressIndicator();
//           }
//         });
//   }
// }
