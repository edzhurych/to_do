import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do/network/model/to_do_model.dart';

class ToDoDetailPage extends StatelessWidget {
  final ToDoModel toDo;

  const ToDoDetailPage({Key? key, required this.toDo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ToDo'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: <Widget>[
              Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    ListTile(
                      title: const Text("Title"),
                      subtitle: Text(toDo.title),
                    ),
                    ListTile(
                      title: const Text("ID"),
                      subtitle: Text("${toDo.id}"),
                    ),
                    ListTile(
                      title: const Text("Body"),
                      subtitle: Text(toDo.completed.toString()),
                    ),
                    ListTile(
                      title: const Text("User ID"),
                      subtitle: Text("${toDo.userId}"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
