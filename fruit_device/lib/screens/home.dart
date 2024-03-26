import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
class Home extends StatelessWidget {
  const Home({super.key});

  getName() async{
    // 1st para = authoity == domain name
    // 2nd para = remaining path
   var url = Uri.https('www.fruityvice.com', '/api/fruit/all');
   var response = await http.get(url);
   // print(response.body);
   if(response.statusCode == 200) {
     var data = convert.jsonDecode(response.body);
     print(data);
   }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(future: getName(), builder: (context, snapshot){
      if(snapshot.connectionState == ConnectionState.done){
        return Text('data aayo ${snapshot.data}');
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
