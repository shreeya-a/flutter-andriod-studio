import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
// shared preferences have to be added to store locally
// value is stored in cache memory

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var title = "hey";


  @override
  void initState(){
    super.initState();

    getValueFromLocalStorage();


  }

  getValueFromLocalStorage() async{
    // here pref == local storage i.e db
    SharedPreferences pref = await  SharedPreferences.getInstance();
    var data = pref.getString('title');

    setState(() {
      title = data ?? '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Local Storage',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Local Storage'),
        ),
        body: Column(
          children: [
            Text(title),
            ElevatedButton(
              onPressed: () async {
                SharedPreferences pref =
                await SharedPreferences.getInstance();
                pref.setString("title", title);
                setState(() {
                  title = "Shreeya";
                });
              },
              child: Text('save to local'),
            )
          ],
        ),
      ),
    );
  }
}
