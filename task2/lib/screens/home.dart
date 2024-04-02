import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class Home extends StatelessWidget {
  const Home({super.key});

  Future<dynamic> getFacts() async {
    var url = Uri.https(
        'dog-api.kinduff.com', '/api/facts');
    // var url = Uri.https('www.fruityvice.com', '/api/fruit/all');

    var response = await http.get(url);
    if (response.statusCode == 200) {
      var data = convert.jsonDecode(response.body);
      print(data);
      return data;
    }else{
      throw Future.error("error");
    }


  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getFacts(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return Text('Sth went wrong');
            }
            var data = snapshot.data;
            return ListView.builder(

                itemBuilder: (context, index) {
                  return Card(
                      child: ListTile(
                      leading: Icon(
                      Icons.dining_rounded
                  ),
                  title: Text(data['facts'].toString() ),

                      ),
                  );
                });
          }else {
            return Center(child: CircularProgressIndicator());
          }

        });
  }
}
