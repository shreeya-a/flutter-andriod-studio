import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class Home extends StatelessWidget {
  const Home({super.key});

  // type casting
  Future<dynamic> getFruits() async {
    // 1st para = authoity == domain name
    // 2nd para = remaining path
    var url = Uri.https('www.fruityvice.com', '/api/fruit/all');
    var response = await http.get(url);
    // print(response.body);
    if (response.statusCode == 200) {
      // converted because would be text and cannot be used
      // converted to json format
      // return convert.jsonDecode(response.body);
      var data = convert.jsonDecode(response.body);
      print(data);
      return data;
      // print(data);
    } else {
      throw Future.error("Error ayo");
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getFruits(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return Text('Sth went wrong');
            }
            var data = snapshot.data;
            return ListView.builder(
              itemCount: data.length,
                // itemCount: snapshot.data?.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: Icon(
                        Icons.dining_rounded
                      ),
                      title: Text(data[index]['name'] +"    " + data[index]['family'] + "   " + data[index]['nutritions']['calories'].toString() ),



                    ),
                  );
                });
            // return Text('data aayo ${snapshot.data}');
          } else {
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
