

import 'package:flutter/material.dart';
import 'package:todo_app/pages/checkbox_state.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Todo(),
    );
  }
}

class Todo extends StatefulWidget {
  const Todo({super.key});

  @override
  State<Todo> createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  final _textController = TextEditingController();

  String userIPTodo = '';
  List<CheckBoxState> todo = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Todo Manager',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            // display list
            child: ListView(
              // padding: EdgeInsets.all(10),
              children: [
                ...todo.map(todoList).toList(),

                // ...userIPTodo.map(todoList).toList(),
                // Text(userIPTodo),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          addTodoDialog();
          // showDialog(context: context, builder: (context){
          //   return Container(
          //     child: AlertDialog(
          //       shape: RoundedRectangleBorder(),
          //       backgroundColor: Colors.white,
          //       title: Text('Add a Todo'),
          //       content: TextField(
          //         onChanged: (value) {},
          //         decoration:
          //         InputDecoration(hintText: 'Type your Todo...'),
          //       ),
          //       actions: [
          //         ElevatedButton(onPressed: (){
          //           Navigator.pop(context);
          //         },
          //
          //           style: ButtonStyle(
          //             backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          //             shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          //               RoundedRectangleBorder(
          //                 borderRadius: BorderRadius.circular(10.0),
          //               ),
          //             ),
          //           ),
          //             child: Text('Cancel', style: TextStyle(color: Colors.blue),),
          //         ),
          //
          //
          //         ElevatedButton(
          //           onPressed: (){
          //           Navigator.pop(context);
          //         },
          //           style: ButtonStyle(
          //             backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
          //       shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          //   RoundedRectangleBorder(
          //   borderRadius: BorderRadius.circular(10.0),
          //   ),
          //       ),
          //       ),
          //
          //
          //             child: Text('Add',
          //               style: TextStyle(color: Colors.white,),
          //
          //             ),
          //         ),
          //       ],
          //     ) ,
          //   );
          // });
        },
        backgroundColor: Colors.blue,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget todoList(CheckBoxState checkbox) => CheckboxListTile(
        value: checkbox.value,
        title: Text(
          checkbox.title,
          style: TextStyle(
              decoration: checkbox.value ? TextDecoration.lineThrough : null),
        ),
        onChanged: (value) {
          setState(() {
            checkbox.value = value!;
          });
        },
        controlAffinity: ListTileControlAffinity.leading,
        activeColor: Colors.red,
        checkColor: Colors.green,
        secondary: const Icon(
          Icons.delete,
          color: Colors.red,
        ),
      );

  Future addTodoDialog() async {
    await showDialog(
        context: context,
        builder: (context) {
          return Container(
            child: AlertDialog(
              shape: RoundedRectangleBorder(),
              backgroundColor: Colors.white,
              title: Text('Add a Todo'),
              content: TextField(
                controller: _textController,
                autofocus: true,
                onChanged: (value) {},
                decoration: InputDecoration(hintText: 'Type your Todo...'),
              ),
              actions: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  child: Text(
                    'Cancel',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      final newTodo = CheckBoxState(
                          title: _textController.text);
                      todo.add(newTodo);
                      _textController.clear();
                    });
                    Navigator.pop(context);
                  },
                  style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.blue),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  child: Text(
                    'Add',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),


          );
          if (userIPTodo != null) {
            setState(() {
              todo.add(CheckBoxState(title: userIPTodo));
            });
          }
        }

    );
    if (userIPTodo == null) {
      setState(() {
        todo.add(CheckBoxState(title: userIPTodo));
      });

  }
}
